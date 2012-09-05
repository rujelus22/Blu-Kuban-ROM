.class public Lcom/samsung/wimax/odb/ODB;
.super Landroid/app/Service;
.source "ODB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wimax/odb/ODB$LocalBinder;
    }
.end annotation


# static fields
.field public static final CT_CMD_NVRAM_UPDATE:I = 0x0

.field public static final CT_CMD_ODB_LOAD_DEFAULT:I = 0x9

.field public static final HIM_MNG_RET_SUCCESS:I = 0x1

.field public static final ODB_RETURNVAL:Ljava/lang/String; = "ODB_RETURNVAL"

.field private static final TAG:Ljava/lang/String; = "ODB MSG"

.field public static final WIMAX_ODB:Ljava/lang/String; = "com.samsung.WIMAX.ODB"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field mRecv:Landroid/content/BroadcastReceiver;

.field mWiMAXNative:Lcom/samsung/wimax/odb/WiMAXNative;

.field private mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field public m_bOpenDevice:Z

.field public m_bPoweron:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/samsung/wimax/odb/ODB;->m_bOpenDevice:Z

    .line 21
    iput-boolean v0, p0, Lcom/samsung/wimax/odb/ODB;->m_bPoweron:Z

    .line 23
    new-instance v0, Lcom/samsung/wimax/odb/WiMAXNative;

    invoke-direct {v0}, Lcom/samsung/wimax/odb/WiMAXNative;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/odb/ODB;->mWiMAXNative:Lcom/samsung/wimax/odb/WiMAXNative;

    .line 34
    new-instance v0, Lcom/samsung/wimax/odb/ODB$1;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/odb/ODB$1;-><init>(Lcom/samsung/wimax/odb/ODB;)V

    iput-object v0, p0, Lcom/samsung/wimax/odb/ODB;->mRecv:Landroid/content/BroadcastReceiver;

    .line 87
    new-instance v0, Lcom/samsung/wimax/odb/ODB$LocalBinder;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/odb/ODB$LocalBinder;-><init>(Lcom/samsung/wimax/odb/ODB;)V

    iput-object v0, p0, Lcom/samsung/wimax/odb/ODB;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private CheckWimaxOn()V
    .registers 4

    .prologue
    .line 101
    const-string v1, "ODB MSG"

    const-string v2, "CheckWimaxOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wimax/odb/ODB;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 105
    iget-object v1, p0, Lcom/samsung/wimax/odb/ODB;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 106
    const-string v1, "ODB MSG"

    const-string v2, "WiMAX modem is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/samsung/wimax/odb/ODB;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 110
    :cond_22
    const-wide/16 v1, 0xc8

    :try_start_24
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_39

    .line 115
    :goto_27
    iget-object v1, p0, Lcom/samsung/wimax/odb/ODB;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 123
    :goto_30
    const-wide/16 v1, 0xc8

    :try_start_32
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_46

    .line 129
    :goto_35
    invoke-direct {p0}, Lcom/samsung/wimax/odb/ODB;->ODBUpdate()V

    .line 130
    return-void

    .line 111
    :catch_39
    move-exception v0

    .line 113
    .local v0, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_27

    .line 119
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_3e
    const-string v1, "ODB MSG"

    const-string v2, "WiMAX modem is OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 124
    :catch_46
    move-exception v0

    .line 126
    .restart local v0       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_35
.end method

.method private ODBUpdate()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 134
    const-string v4, "ODB MSG"

    const-string v5, "Try to WiMAX power on."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v4, p0, Lcom/samsung/wimax/odb/ODB;->mWiMAXNative:Lcom/samsung/wimax/odb/WiMAXNative;

    invoke-virtual {v4}, Lcom/samsung/wimax/odb/WiMAXNative;->WiMAXPowerOn()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/wimax/odb/ODB;->m_bPoweron:Z

    .line 137
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.WIMAX.ODB"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, intent:Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/samsung/wimax/odb/ODB;->m_bPoweron:Z

    if-eqz v4, :cond_e6

    .line 140
    const-string v4, "ODB MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Power on : success!  ret : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/wimax/odb/ODB;->m_bPoweron:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-wide/16 v4, 0xfa0

    :try_start_38
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3b} :catch_c2

    .line 148
    :goto_3b
    iget-object v4, p0, Lcom/samsung/wimax/odb/ODB;->mWiMAXNative:Lcom/samsung/wimax/odb/WiMAXNative;

    invoke-virtual {v4}, Lcom/samsung/wimax/odb/WiMAXNative;->wmxopen()I

    move-result v3

    .line 150
    .local v3, ret:I
    if-eq v3, v7, :cond_8c

    .line 151
    const/4 v1, 0x0

    .local v1, i:I
    :goto_44
    const/16 v4, 0x3c

    if-ge v1, v4, :cond_55

    .line 153
    const-wide/16 v4, 0x190

    :try_start_4a
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4d} :catch_c8

    .line 158
    :goto_4d
    iget-object v4, p0, Lcom/samsung/wimax/odb/ODB;->mWiMAXNative:Lcom/samsung/wimax/odb/WiMAXNative;

    invoke-virtual {v4}, Lcom/samsung/wimax/odb/WiMAXNative;->wmxopen()I

    move-result v3

    .line 159
    if-ne v3, v7, :cond_cd

    .line 162
    :cond_55
    if-eq v3, v7, :cond_8c

    .line 163
    const-string v4, "ODB MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OpenDevice fail!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v4, "ODB_RETURNVAL"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    const-string v4, "self"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    iget-object v4, p0, Lcom/samsung/wimax/odb/ODB;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_d1

    .line 167
    iget-object v4, p0, Lcom/samsung/wimax/odb/ODB;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    const-string v4, "ODB MSG"

    const-string v5, "ODB_RETURNVAL : sendBroadcast (0)!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_89
    invoke-virtual {p0}, Lcom/samsung/wimax/odb/ODB;->stopSelf()V

    .line 177
    .end local v1           #i:I
    :cond_8c
    const-string v4, "ODB MSG"

    const-string v5, "OpenDevice Success!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v4, p0, Lcom/samsung/wimax/odb/ODB;->mWiMAXNative:Lcom/samsung/wimax/odb/WiMAXNative;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/samsung/wimax/odb/WiMAXNative;->SendCTCmd(I)V

    .line 179
    iget-object v4, p0, Lcom/samsung/wimax/odb/ODB;->mWiMAXNative:Lcom/samsung/wimax/odb/WiMAXNative;

    invoke-virtual {v4, v8}, Lcom/samsung/wimax/odb/WiMAXNative;->SendCTCmd(I)V

    .line 181
    const-wide/16 v4, 0x7d0

    :try_start_a1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a4
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_a4} :catch_d9

    .line 186
    :goto_a4
    const-string v4, "ODB_RETURNVAL"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v4, "self"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    iget-object v4, p0, Lcom/samsung/wimax/odb/ODB;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_de

    .line 189
    iget-object v4, p0, Lcom/samsung/wimax/odb/ODB;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    const-string v4, "ODB MSG"

    const-string v5, "ODB_RETURNVAL : sendBroadcast (1)!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_be
    invoke-virtual {p0}, Lcom/samsung/wimax/odb/ODB;->stopSelf()V

    .line 211
    .end local v3           #ret:I
    :goto_c1
    return-void

    .line 143
    :catch_c2
    move-exception v0

    .line 145
    .local v0, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3b

    .line 154
    .end local v0           #e1:Ljava/lang/InterruptedException;
    .restart local v1       #i:I
    .restart local v3       #ret:I
    :catch_c8
    move-exception v0

    .line 156
    .restart local v0       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4d

    .line 151
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_cd
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_44

    .line 170
    :cond_d1
    const-string v4, "ODB MSG"

    const-string v5, "ODB_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 182
    .end local v1           #i:I
    :catch_d9
    move-exception v0

    .line 184
    .restart local v0       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_a4

    .line 192
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_de
    const-string v4, "ODB MSG"

    const-string v5, "ODB_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 198
    .end local v3           #ret:I
    :cond_e6
    const-string v4, "ODB MSG"

    const-string v5, "Power on : fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v4, "ODB_RETURNVAL"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    const-string v4, "self"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    iget-object v4, p0, Lcom/samsung/wimax/odb/ODB;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_10b

    .line 203
    iget-object v4, p0, Lcom/samsung/wimax/odb/ODB;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 204
    const-string v4, "ODB MSG"

    const-string v5, "ODB_RETURNVAL : sendBroadcast (0)!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_107
    invoke-virtual {p0}, Lcom/samsung/wimax/odb/ODB;->stopSelf()V

    goto :goto_c1

    .line 206
    :cond_10b
    const-string v4, "ODB MSG"

    const-string v5, "ODB_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_107
.end method

.method static synthetic access$000(Lcom/samsung/wimax/odb/ODB;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/wimax/odb/ODB;->CheckWimaxOn()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/wimax/odb/ODB;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 91
    const-string v0, "ODB MSG"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/samsung/wimax/odb/ODB;->mRecv:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/odb/ODB;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    iget-boolean v0, p0, Lcom/samsung/wimax/odb/ODB;->m_bPoweron:Z

    if-eqz v0, :cond_15

    .line 94
    iget-object v0, p0, Lcom/samsung/wimax/odb/ODB;->mWiMAXNative:Lcom/samsung/wimax/odb/WiMAXNative;

    invoke-virtual {v0}, Lcom/samsung/wimax/odb/WiMAXNative;->WiMAXPowerOff()Z

    .line 96
    :cond_15
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 97
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 6
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 67
    const-string v1, "ODB MSG"

    const-string v2, "onStart Service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/samsung/wimax/odb/ODB;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wimax/odb/ODB;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.WIMAX.ODB"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/samsung/wimax/odb/ODB;->mRecv:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/wimax/odb/ODB;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    invoke-direct {p0}, Lcom/samsung/wimax/odb/ODB;->CheckWimaxOn()V

    .line 74
    return-void
.end method
