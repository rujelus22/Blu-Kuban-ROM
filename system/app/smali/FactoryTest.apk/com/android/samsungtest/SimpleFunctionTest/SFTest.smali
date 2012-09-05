.class public Lcom/android/samsungtest/SimpleFunctionTest/SFTest;
.super Landroid/app/Activity;
.source "SFTest.java"


# instance fields
.field private AFTER_BT_OFF_BT_ON_DURATION:J

.field private final BT_ON_AFTER_BT_DISCOVERABLE_TIME:I

.field LOG_TAG:Ljava/lang/String;

.field private final SIMPLE_FUNCTION_TEST_STATUS:Ljava/lang/String;

.field public localTestResultSimpletest:Z

.field private mCurrKey:I

.field private mCurrTime:J

.field private mHandler:Landroid/os/Handler;

.field private mHandlerBTOn:Landroid/os/Handler;

.field private mPrevKey:I

.field private mPrevTime:J

.field pm:Landroid/os/PowerManager;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const-string v0, "START"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->SIMPLE_FUNCTION_TEST_STATUS:Ljava/lang/String;

    .line 54
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->AFTER_BT_OFF_BT_ON_DURATION:J

    .line 55
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->BT_ON_AFTER_BT_DISCOVERABLE_TIME:I

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mHandlerBTOn:Landroid/os/Handler;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mHandler:Landroid/os/Handler;

    .line 70
    const-string v0, "SFTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private turnOffAutobrightness()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 276
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "autobrightness"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 277
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 278
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 280
    .local v2, out:Ljava/io/OutputStream;
    :try_start_e
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/lightsensor/switch_cmd/lightsensor_file_cmd"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_1a} :catch_2c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_3d

    .line 282
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    const/4 v4, 0x0

    const/16 v5, 0x30

    :try_start_1d
    aput-byte v5, v0, v4

    .line 283
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_22} :catch_62
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_5f

    .line 289
    if-eqz v3, :cond_65

    :try_start_24
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_29

    const/4 v2, 0x0

    .line 292
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :cond_28
    :goto_28
    return-void

    .line 289
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_29
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_28

    .line 284
    :catch_2c
    move-exception v1

    .line 285
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2d
    :try_start_2d
    const-string v4, "IntensityTest"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_4e

    .line 289
    if-eqz v2, :cond_28

    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_56

    const/4 v2, 0x0

    goto :goto_28

    .line 286
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_3d
    move-exception v1

    .line 287
    .local v1, e:Ljava/io/IOException;
    :goto_3e
    :try_start_3e
    const-string v4, "IntensityTest"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_4e

    .line 289
    if-eqz v2, :cond_28

    :try_start_49
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_58

    const/4 v2, 0x0

    goto :goto_28

    .end local v1           #e:Ljava/io/IOException;
    :catchall_4e
    move-exception v4

    :goto_4f
    if-eqz v2, :cond_55

    :try_start_51
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_5a

    const/4 v2, 0x0

    :cond_55
    :goto_55
    throw v4

    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_56
    move-exception v4

    goto :goto_28

    .local v1, e:Ljava/io/IOException;
    :catch_58
    move-exception v4

    goto :goto_28

    .end local v1           #e:Ljava/io/IOException;
    :catch_5a
    move-exception v5

    goto :goto_55

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catchall_5c
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_4f

    .line 286
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_5f
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_3e

    .line 284
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_62
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2d

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_65
    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_28
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 321
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 322
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 323
    const/4 v0, 0x1

    .line 329
    :goto_24
    return v0

    .line 327
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mPrevKey:I

    .line 328
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mPrevTime:J

    .line 329
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public changeLocalTestResult(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 358
    const-string v0, "SFTEST"

    const-string v1, "changeLocalTestResult"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/16 v0, 0x15

    if-ne p1, v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->localTestResultSimpletest:Z

    .line 360
    :cond_e
    return-void
.end method

.method public keypad2Test()V
    .registers 3

    .prologue
    .line 386
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->finishActivity(I)V

    .line 388
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 389
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 334
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 335
    sparse-switch p1, :sswitch_data_24

    .line 353
    :cond_6
    :goto_6
    return-void

    .line 337
    :sswitch_7
    const/16 v0, 0x23

    if-ne p2, v0, :cond_6

    .line 338
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->keypad2Test()V

    goto :goto_6

    .line 342
    :sswitch_f
    const/16 v0, 0x29

    if-ne p2, v0, :cond_6

    .line 343
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->changeLocalTestResult(I)V

    goto :goto_6

    .line 347
    :sswitch_19
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->finish()V

    .line 348
    const/16 v0, 0x2d

    if-ne p2, v0, :cond_6

    .line 349
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->finish()V

    goto :goto_6

    .line 335
    :sswitch_data_24
    .sparse-switch
        0x6 -> :sswitch_7
        0xd -> :sswitch_f
        0xe -> :sswitch_19
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mPrevKey:I

    .line 84
    iput-wide v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mPrevTime:J

    .line 85
    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mCurrKey:I

    .line 86
    iput-wide v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mCurrTime:J

    .line 118
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->turnOffAutobrightness()V

    .line 120
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->pm:Landroid/os/PowerManager;

    .line 121
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 122
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 124
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 200
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->sendInFTA(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 297
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mCurrKey:I

    .line 298
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->mCurrTime:J

    .line 300
    const/4 v1, 0x6

    if-ne p1, v1, :cond_10

    .line 301
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->finish()V

    .line 317
    :cond_f
    :goto_f
    return v0

    .line 305
    :cond_10
    const/4 v1, 0x4

    if-ne p1, v1, :cond_30

    .line 306
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->BackKeyCheck()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-gtz v1, :cond_f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-nez v1, :cond_f

    .line 308
    const-string v1, "KEYCODE"

    const-string v2, "This is back_key"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->finish()V

    goto :goto_f

    .line 313
    :cond_30
    const/16 v1, 0x54

    if-eq p1, v1, :cond_f

    .line 317
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 205
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 206
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 130
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->sendInFTA(Ljava/lang/String;)V

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    return-void
.end method

.method public sendInFTA(Ljava/lang/String;)V
    .registers 4
    .parameter "index"

    .prologue
    .line 380
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.InFTA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, i:Landroid/content/Intent;
    const-string v1, "INDEX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 383
    return-void
.end method
