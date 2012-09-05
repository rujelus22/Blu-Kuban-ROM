.class public Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;
.super Landroid/app/Activity;
.source "wimaxwtmmode.java"


# static fields
.field public static final CERSTART:Ljava/lang/String; = "CERSTART"

.field public static final EXTRA_NAME:Ljava/lang/String; = "WTM"

.field private static final RET_SUCCESS:I = 0x1

.field public static final RFSTART:Ljava/lang/String; = "RFSTART"

.field public static final Responce_Intent:Ljava/lang/String; = "com.android.samsungtest.wimaxtest.Response"

.field public static final STOP:Ljava/lang/String; = "STOP"

.field private static final TAG:Ljava/lang/String; = "WTM MSG"

.field public static final WIMAX_Intent:Ljava/lang/String; = "com.android.samsungtest.wimaxtest.WTM"

.field private static final WTM:I = 0x1


# instance fields
.field cableVal:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mRecv:Landroid/content/BroadcastReceiver;

.field private mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field public m_bPoweroff:Z

.field public m_bpoweron:Z

.field natives:Lcom/samsung/wimax/wimaxwtm/WiBroNative;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    new-instance v0, Lcom/samsung/wimax/wimaxwtm/WiBroNative;

    invoke-direct {v0}, Lcom/samsung/wimax/wimaxwtm/WiBroNative;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->natives:Lcom/samsung/wimax/wimaxwtm/WiBroNative;

    .line 26
    iput-boolean v1, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->m_bpoweron:Z

    .line 27
    iput-boolean v1, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->m_bPoweroff:Z

    .line 42
    new-instance v0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode$1;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode$1;-><init>(Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;)V

    iput-object v0, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->mRecv:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private CheckWimaxOn()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    iget-object v2, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 180
    const-string v2, "WTM MSG"

    const-string v3, "WiMAX modem is ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 182
    iput-boolean v0, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->m_bpoweron:Z

    .line 187
    :goto_18
    return v0

    .line 186
    :cond_19
    iput-boolean v1, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->m_bpoweron:Z

    move v0, v1

    .line 187
    goto :goto_18
.end method

.method static synthetic access$000(Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;)Landroid/net/fourG/wimax/Wimax4GManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected ChangeMode(I)V
    .registers 8
    .parameter "val"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 120
    const-string v2, "WTM MSG"

    const-string v3, "ChangeMode : WTM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0}, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->CheckWimaxOn()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 122
    :cond_f
    iget-boolean v2, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->m_bpoweron:Z

    if-ne v2, v4, :cond_27

    .line 123
    const-string v2, "WTM MSG"

    const-string v3, "m_bpoweron == true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-wide/16 v2, 0xc8

    :try_start_1c
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_3b

    .line 130
    :goto_1f
    iget-object v2, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v2

    if-ne v2, v4, :cond_f

    .line 133
    :cond_27
    iput-boolean v5, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->m_bpoweron:Z

    .line 138
    :cond_29
    iget-object v2, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->natives:Lcom/samsung/wimax/wimaxwtm/WiBroNative;

    invoke-virtual {v2, p1}, Lcom/samsung/wimax/wimaxwtm/WiBroNative;->wibropathchange(I)I

    move-result v2

    if-ne v2, v4, :cond_40

    .line 139
    const-string v2, "WTM MSG"

    const-string v3, "Chnage to WTM mode success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput-boolean v4, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->m_bpoweron:Z

    .line 149
    :goto_3a
    return-void

    .line 126
    :catch_3b
    move-exception v0

    .line 128
    .local v0, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1f

    .line 142
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_40
    const-string v2, "WTM MSG"

    const-string v3, "Chnage to WTM mode fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-boolean v5, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->m_bpoweron:Z

    .line 145
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.wimaxtest.Response"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "Response"

    const-string v3, "NG"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3a
.end method

.method protected Wimaxpoweroff()V
    .registers 5

    .prologue
    .line 192
    const-string v1, "WTM MSG"

    const-string v2, "Wimaxpoweroff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->natives:Lcom/samsung/wimax/wimaxwtm/WiBroNative;

    invoke-virtual {v1}, Lcom/samsung/wimax/wimaxwtm/WiBroNative;->WiMAXPowerOff()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->m_bPoweroff:Z

    .line 196
    iget-boolean v1, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->m_bPoweroff:Z

    if-eqz v1, :cond_1e

    .line 197
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->m_bpoweron:Z

    .line 198
    const-string v1, "WTM MSG"

    const-string v2, "Power off : success!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_1d
    return-void

    .line 201
    :cond_1e
    const-string v1, "WTM MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power off : fail!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->m_bPoweroff:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.wimaxtest.Response"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Response"

    const-string v2, "NG"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_57

    .line 206
    iget-object v1, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    const-string v1, "WTM MSG"

    const-string v2, "Responce_Intent : sendBroadcast (NG)!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 209
    :cond_57
    const-string v1, "WTM MSG"

    const-string v2, "Responce_Intent :  mContext = null!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->setContentView(I)V

    .line 76
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 89
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 115
    iget-object v0, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->mRecv:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v1, mFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.samsungtest.wimaxtest.WTM"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->mRecv:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "cable val"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->cableVal:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->cableVal:Ljava/lang/String;

    const-string v3, "RFSTART"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->cableVal:Ljava/lang/String;

    const-string v3, "CERSTART"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3a

    .line 100
    :cond_33
    invoke-virtual {p0, v4}, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->ChangeMode(I)V

    .line 109
    :cond_36
    :goto_36
    invoke-virtual {p0}, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->finish()V

    .line 110
    return-void

    .line 101
    :cond_3a
    iget-object v2, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->cableVal:Ljava/lang/String;

    const-string v3, "STOP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_36

    .line 103
    iget-object v2, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2, v4}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.wimaxtest.Response"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, i:Landroid/content/Intent;
    const-string v2, "Response"

    const-string v3, "OK"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0}, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 107
    const-string v2, "WTM MSG"

    const-string v3, "Responce_Intent : sendBroadcast (OK)!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method
