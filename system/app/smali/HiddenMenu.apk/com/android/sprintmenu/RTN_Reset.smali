.class public Lcom/android/sprintmenu/RTN_Reset;
.super Landroid/app/Activity;
.source "RTN_Reset.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field context:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mWIMAXReceiver:Landroid/content/BroadcastReceiver;

.field final mWIMAXReceiverFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/android/sprintmenu/RTN_Reset;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/RTN_Reset;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 116
    new-instance v0, Lcom/android/sprintmenu/RTN_Reset$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/RTN_Reset$1;-><init>(Lcom/android/sprintmenu/RTN_Reset;)V

    iput-object v0, p0, Lcom/android/sprintmenu/RTN_Reset;->mWIMAXReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.WIMAX.ODB"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sprintmenu/RTN_Reset;->mWIMAXReceiverFilter:Landroid/content/IntentFilter;

    .line 291
    new-instance v0, Lcom/android/sprintmenu/RTN_Reset$2;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/RTN_Reset$2;-><init>(Lcom/android/sprintmenu/RTN_Reset;)V

    iput-object v0, p0, Lcom/android/sprintmenu/RTN_Reset;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private Reset_RTN()V
    .registers 9

    .prologue
    .line 94
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 99
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 100
    .local v3, fileSize:I
    const/16 v4, 0xc

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 101
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 102
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 103
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_35

    .line 109
    sget-object v4, Lcom/android/sprintmenu/RTN_Reset;->LOG_TAG:Ljava/lang/String;

    const-string v5, "send RTN Reset to RIL"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v4, Lcom/android/sprintmenu/MSL_Checker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/RTN_Reset;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7cd

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 114
    :goto_34
    return-void

    .line 105
    :catch_35
    move-exception v2

    .line 107
    .local v2, e:Ljava/io/IOException;
    goto :goto_34
.end method

.method static synthetic access$000(Lcom/android/sprintmenu/RTN_Reset;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/sprintmenu/RTN_Reset;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/sprintmenu/RTN_Reset;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sprintmenu/RTN_Reset;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/sprintmenu/RTN_Reset;->Reset_RTN()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 175
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1d

    .line 176
    packed-switch p1, :pswitch_data_46

    .line 197
    :goto_b
    return-void

    .line 178
    :pswitch_c
    sget-object v1, Lcom/android/sprintmenu/RTN_Reset;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RTN Reset Error : WIMAX default fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v1, "RTN Reset Error : WIMAX default fail"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_b

    .line 185
    :cond_1d
    packed-switch p1, :pswitch_data_4c

    goto :goto_b

    .line 187
    :pswitch_21
    const-string v1, "ODB_RETURNVAL"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 188
    .local v0, ret:I
    if-ne v0, v2, :cond_34

    .line 189
    sget-object v1, Lcom/android/sprintmenu/RTN_Reset;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RTN Reset Success : WIMAX reset sucess"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Lcom/android/sprintmenu/RTN_Reset;->Reset_RTN()V

    goto :goto_b

    .line 192
    :cond_34
    sget-object v1, Lcom/android/sprintmenu/RTN_Reset;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RTN Reset Error : WIMAX default return 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v1, "RTN Reset Error : WIMAX default fail"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_b

    .line 176
    nop

    :pswitch_data_46
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch

    .line 185
    :pswitch_data_4c
    .packed-switch 0x2
        :pswitch_21
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    sget-object v1, Lcom/android/sprintmenu/RTN_Reset;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Reset_RTN onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-object p0, p0, Lcom/android/sprintmenu/RTN_Reset;->context:Landroid/content/Context;

    .line 139
    iget-object v1, p0, Lcom/android/sprintmenu/RTN_Reset;->mWIMAXReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/sprintmenu/RTN_Reset;->mWIMAXReceiverFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/sprintmenu/RTN_Reset;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.WIMAX.ODB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, wimax:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/RTN_Reset;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/sprintmenu/RTN_Reset;->mWIMAXReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/RTN_Reset;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 162
    return-void
.end method

.method public startSDFormat()V
    .registers 5

    .prologue
    .line 165
    new-instance v0, Lcom/android/sprintmenu/SDCardFormat;

    iget-object v1, p0, Lcom/android/sprintmenu/RTN_Reset;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7ce

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sprintmenu/RTN_Reset;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7cf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/sprintmenu/SDCardFormat;-><init>(Landroid/content/Context;Landroid/os/Message;Landroid/os/Message;)V

    .line 168
    .local v0, sdcardFormat:Lcom/android/sprintmenu/SDCardFormat;
    invoke-virtual {v0}, Lcom/android/sprintmenu/SDCardFormat;->startSDCardFormat()V

    .line 169
    return-void
.end method
