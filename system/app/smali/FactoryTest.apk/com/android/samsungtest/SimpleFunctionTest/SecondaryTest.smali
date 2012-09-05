.class public Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;
.super Landroid/app/Activity;
.source "SecondaryTest.java"


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field active_code:I

.field private mFactoryTestApp:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field pm:Landroid/os/PowerManager;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->active_code:I

    .line 42
    const-string v0, "Secondar"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->LOG_TAG:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->mFactoryTestApp:Ljava/lang/String;

    .line 145
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getOemData()V
    .registers 9

    .prologue
    const/16 v7, 0x22

    .line 122
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 127
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_c
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->LOG_TAG:Ljava/lang/String;

    const-string v5, " writing byte data"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v3, 0x4

    .line 129
    .local v3, fileSize:I
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 130
    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 131
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 132
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 133
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->LOG_TAG:Ljava/lang/String;

    const-string v5, " completed writing  byte data"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2d} :catch_44

    .line 140
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->LOG_TAG:Ljava/lang/String;

    const-string v5, " sending the RIL command"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 142
    .end local v3           #fileSize:I
    :goto_43
    return-void

    .line 135
    :catch_44
    move-exception v2

    .line 137
    .local v2, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->LOG_TAG:Ljava/lang/String;

    const-string v5, " failed to write"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 96
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->active_code:I

    if-ne p1, v0, :cond_1b

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1b

    .line 99
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "came back from secondary menu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->mFactoryTestApp:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 101
    const/16 v0, 0xce

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->setResult(I)V

    .line 103
    :cond_17
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->finish()V

    .line 116
    :goto_1a
    return-void

    .line 108
    :cond_1b
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "fail to return properly"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->mFactoryTestApp:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->setResult(I)V

    .line 112
    :cond_2a
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->finish()V

    goto :goto_1a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v1, 0x7f030030

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->setContentView(I)V

    .line 58
    const-string v1, "secondary--->"

    const-string v2, "calling activity secondary test after on create"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 60
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    .local v0, i:Landroid/content/Intent;
    const-string v1, "SECONDARY_TEST_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->mFactoryTestApp:Ljava/lang/String;

    .line 63
    const-string v1, "secondary--->"

    const-string v2, "calling activity secondary test calling getOemData"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->getOemData()V

    .line 66
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->pm:Landroid/os/PowerManager;

    .line 67
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->pm:Landroid/os/PowerManager;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 68
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 82
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 83
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 88
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 89
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 77
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method
