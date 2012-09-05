.class public Lcom/sec/android/app/servicemodeapp/ServiceModeApp;
.super Landroid/app/Activity;
.source "ServiceModeApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    }
.end annotation


# instance fields
.field private currentModeTypeForEnd:C

.field private currentSVMode:C

.field private list:Landroid/widget/ListView;

.field public mHandler:Landroid/os/Handler;

.field private mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

.field private mStrings:[Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;

    .line 53
    iput-object v3, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 54
    iput-object v3, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    .line 71
    new-instance v0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;-><init>(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mHandler:Landroid/os/Handler;

    .line 154
    return-void
.end method

.method private AnalisysString()V
    .registers 8

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v4, 0x1

    const/16 v3, 0x3e9

    const/4 v2, 0x0

    .line 384
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->Update()V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;

    aget-object v0, v0, v4

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;

    aget-object v0, v0, v4

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 389
    :cond_39
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->TmpFixFunc()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 412
    :goto_44
    return-void

    .line 392
    :cond_45
    const-string v0, "ServiceMode"

    const-string v1, " Do not need refresh "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 395
    :cond_4d
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "End service mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 397
    const-string v0, "ServiceMode"

    const-string v1, "End Service Mode !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->finish()V

    goto :goto_44

    .line 402
    :cond_64
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->IsOnlyKeyNumberDisplay()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_44

    .line 409
    :cond_70
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_44
.end method

.method private EndServiceMode()V
    .registers 7

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 484
    const-string v0, "ServiceMode"

    const-string v4, "End Service Mode !"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e9

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    iget-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->currentModeTypeForEnd:C

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v0, v2, :cond_4e

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    .line 493
    :goto_39
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 494
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 496
    :cond_4a
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->finish()V

    .line 497
    return-void

    .line 491
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto :goto_39
.end method

.method private IsOnlyKeyNumberDisplay()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 342
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_35

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_35

    .line 344
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-le v4, v5, :cond_35

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C
    :try_end_2f
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2f} :catch_37
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_41

    move-result v4

    const/16 v5, 0x3a

    if-ge v4, v5, :cond_35

    .line 356
    :goto_34
    return v2

    :cond_35
    move v2, v3

    .line 350
    goto :goto_34

    .line 351
    :catch_37
    move-exception v1

    .line 352
    .local v1, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, "ServiceMode"

    const-string v4, "IsOnlyKeyNumberDisplay() :  StringIndexOutOfBoundsException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 353
    goto :goto_34

    .line 354
    .end local v1           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    :catch_41
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ServiceMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsOnlyKeyNumberDisplay() :  error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 356
    goto :goto_34
.end method

.method private ParseKeyValueForModem(C)C
    .registers 6
    .parameter "key"

    .prologue
    .line 440
    move v0, p1

    .line 442
    .local v0, rtn_key:C
    sparse-switch p1, :sswitch_data_32

    .line 476
    :goto_4
    const-string v1, "ServiceMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rtn_key is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return v0

    .line 446
    :sswitch_1d
    const/16 v0, 0x41

    .line 447
    goto :goto_4

    .line 450
    :sswitch_20
    const/16 v0, 0x42

    .line 451
    goto :goto_4

    .line 454
    :sswitch_23
    const/16 v0, 0x43

    .line 455
    goto :goto_4

    .line 458
    :sswitch_26
    const/16 v0, 0x44

    .line 459
    goto :goto_4

    .line 462
    :sswitch_29
    const/16 v0, 0x45

    .line 463
    goto :goto_4

    .line 466
    :sswitch_2c
    const/16 v0, 0x46

    .line 467
    goto :goto_4

    .line 470
    :sswitch_2f
    const/16 v0, 0x2a

    .line 471
    goto :goto_4

    .line 442
    :sswitch_data_32
    .sparse-switch
        0x2a -> :sswitch_2f
        0x2d -> :sswitch_2f
        0x41 -> :sswitch_1d
        0x42 -> :sswitch_20
        0x43 -> :sswitch_23
        0x44 -> :sswitch_26
        0x45 -> :sswitch_29
        0x46 -> :sswitch_2c
        0x61 -> :sswitch_1d
        0x62 -> :sswitch_20
        0x63 -> :sswitch_23
        0x64 -> :sswitch_26
        0x65 -> :sswitch_29
        0x66 -> :sswitch_2c
    .end sparse-switch
.end method

.method private ParseKeyValueToIPCDefineValue(I)C
    .registers 3
    .parameter "key"

    .prologue
    const/16 v0, 0x30

    .line 420
    packed-switch p1, :pswitch_data_22

    .line 435
    const/4 v0, 0x0

    :goto_6
    :pswitch_6
    return v0

    .line 423
    :pswitch_7
    const/16 v0, 0x31

    goto :goto_6

    .line 424
    :pswitch_a
    const/16 v0, 0x32

    goto :goto_6

    .line 425
    :pswitch_d
    const/16 v0, 0x33

    goto :goto_6

    .line 426
    :pswitch_10
    const/16 v0, 0x34

    goto :goto_6

    .line 427
    :pswitch_13
    const/16 v0, 0x35

    goto :goto_6

    .line 428
    :pswitch_16
    const/16 v0, 0x36

    goto :goto_6

    .line 429
    :pswitch_19
    const/16 v0, 0x37

    goto :goto_6

    .line 430
    :pswitch_1c
    const/16 v0, 0x38

    goto :goto_6

    .line 431
    :pswitch_1f
    const/16 v0, 0x39

    goto :goto_6

    .line 420
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_6
    .end packed-switch
.end method

.method private SendData(CCCCC)V
    .registers 10
    .parameter "svcMode"
    .parameter "modetype"
    .parameter "subtype"
    .parameter "keycode"
    .parameter "query"

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, data:[B
    packed-switch p1, :pswitch_data_66

    .line 320
    const-string v1, "ServiceMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch err - default : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_1c
    :pswitch_1c
    iput-char p1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->currentSVMode:C

    .line 326
    if-nez v0, :cond_46

    .line 328
    const-string v1, "ServiceMode"

    const-string v2, " err - data is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_27
    return-void

    .line 294
    :pswitch_28
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v1, p1, p2, p3, p5}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->getServMEnterData(CCCC)[B

    move-result-object v0

    .line 297
    iput-char p2, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->currentModeTypeForEnd:C

    goto :goto_1c

    .line 302
    :pswitch_31
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->setEndModeData(CC)[B

    move-result-object v0

    .line 305
    goto :goto_1c

    .line 309
    :pswitch_38
    const-string v1, "ServiceMode"

    const-string v2, "SendData -setPressKeyData "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v1, p1, p4, p5}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->setPressKeyData(CCC)[B

    move-result-object v0

    .line 313
    goto :goto_1c

    .line 332
    :cond_46
    const/4 v1, 0x2

    if-ne p1, v1, :cond_57

    .line 333
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_27

    .line 335
    :cond_57
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_27

    .line 290
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_28
        :pswitch_31
        :pswitch_38
        :pswitch_1c
    .end packed-switch
.end method

.method private TmpFixFunc()Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 362
    const-string v1, "Automatic["

    .line 363
    .local v1, CpBug:Ljava/lang/String;
    const-string v2, "[1] WCDMA 850"

    .line 364
    .local v2, CpBug1:Ljava/lang/String;
    const-string v3, "[1] GSM 850"

    .line 365
    .local v3, CpBug2:Ljava/lang/String;
    const-string v0, "[2]"

    .line 367
    .local v0, CheckSecondLine:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_28

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_28

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 369
    :cond_28
    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 371
    const-string v4, "ServiceMode"

    const-string v6, "tmp code : need to refresh"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 378
    :cond_3a
    return v4
.end method

.method private Update()V
    .registers 6

    .prologue
    .line 281
    const-string v0, "ServiceMode"

    const-string v1, "Update!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->list:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f030010

    const v3, 0x7f06003b

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->AnalisysString()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)C
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->currentSVMode:C

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;CCCCC)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;I)C
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->ParseKeyValueToIPCDefineValue(I)C

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;C)C
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->ParseKeyValueForModem(C)C

    move-result v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0x14

    const/16 v7, 0x13

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 502
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 504
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 505
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "keyString"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 506
    .local v11, keyString:Ljava/lang/String;
    const-string v0, "ServiceMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyString is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->setContentView(I)V

    .line 510
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 511
    new-instance v0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;-><init>(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    .line 512
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->list:Landroid/widget/ListView;

    .line 516
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 517
    .local v13, pm:Landroid/os/PowerManager;
    const v0, 0x20000006

    const-string v2, "svcModeApp"

    invoke-virtual {v13, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 523
    :cond_6c
    const-string v12, "Right-hardkey :Back.   Please use the Menukey."

    .line 525
    .local v12, msg:Ljava/lang/String;
    invoke-static {p0, v12, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 527
    const-string v0, "197328640"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    .line 581
    :goto_9d
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$2;-><init>(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 623
    return-void

    .line 529
    :cond_a8
    const-string v0, "0011"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto :goto_9d

    .line 531
    :cond_d1
    const-string v0, "0228"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x5

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto :goto_9d

    .line 533
    :cond_fc
    const-string v0, "32489"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x6

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 535
    :cond_128
    const-string v0, "2580"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x7

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 537
    :cond_154
    const-string v0, "9090"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 539
    :cond_17f
    const-string v0, "0599"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v7, v8

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 541
    :cond_1ab
    const-string v0, "7284"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 543
    :cond_1d6
    const-string v0, "4238378"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_203

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x17

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 545
    :cond_203
    const-string v0, "0283"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_230

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x18

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 547
    :cond_230
    const-string v0, "1575"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25d

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x15

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 549
    :cond_25d
    const-string v0, "73876766"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28a

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x1b

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 551
    :cond_28a
    const-string v0, "738767633"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b7

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x1c

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 553
    :cond_2b7
    const-string v0, "7387678378"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e4

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x1d

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 555
    :cond_2e4
    const-string v0, "7387677763"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_311

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x1e

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 557
    :cond_311
    const-string v0, "4387264636"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33e

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x1f

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 559
    :cond_33e
    const-string v0, "6984125*"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36a

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v7, v9

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 561
    :cond_36a
    const-string v0, "2886"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_396

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v7, v9

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 563
    :cond_396
    const-string v0, "2767*2878"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c3

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x21

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 565
    :cond_3c3
    const-string v0, "1111"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f0

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x1002

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 569
    :cond_3f0
    const-string v0, "2222"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_400

    const-string v0, "8888"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_425

    .line 571
    :cond_400
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x1003

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 573
    :cond_425
    const-string v0, "301279"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_435

    const-string v0, "279301"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_459

    .line 574
    :cond_435
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v7, v8

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 576
    :cond_459
    const-string v0, "2263"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_486

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x16

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto/16 :goto_9d

    .line 579
    :cond_486
    const-string v0, "ServiceMode"

    const-string v1, "err -strange value"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 639
    const-string v0, "ServiceMode"

    const-string v1, "onCreateOptionsMenu occur"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 643
    const-string v0, "END"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 644
    const/4 v0, 0x2

    const-string v1, "Back"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 645
    const/4 v0, 0x3

    const-string v1, "Key Input"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 646
    const/4 v0, 0x4

    const-string v1, "Select"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 647
    const/4 v0, 0x5

    const-string v1, "Help"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 649
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 802
    const-string v0, "ServiceMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DispatchKeyEvent("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    packed-switch p1, :pswitch_data_54

    .line 827
    :goto_22
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 817
    :pswitch_27
    const-string v0, "ServiceMode"

    const-string v1, "KEYCODE_RIGHT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 820
    const/16 v4, 0x5c

    .line 821
    .local v4, key:C
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto :goto_22

    .line 804
    nop

    :pswitch_data_54
    .packed-switch 0x16
        :pswitch_27
    .end packed-switch
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 14
    .parameter "featureId"
    .parameter "item"

    .prologue
    const v10, 0x7f050009

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 655
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 657
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->EndServiceMode()V

    .line 796
    :cond_15
    :goto_15
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 659
    :cond_1a
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "Back"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 661
    const-string v0, "ServiceMode"

    const-string v1, "Back Button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 663
    const/16 v4, 0x5c

    .line 664
    .local v4, key:C
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V

    goto :goto_15

    .line 667
    .end local v4           #key:C
    :cond_52
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "Key Input"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 669
    const/4 v9, 0x0

    .line 671
    .local v9, textEntryView:Landroid/view/View;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 674
    const v0, 0x7f06000b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 676
    .local v7, input:Landroid/widget/EditText;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;

    invoke-direct {v2, p0, v7}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;-><init>(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 714
    .local v6, a:Landroid/app/AlertDialog;
    if-eqz v9, :cond_b2

    .line 716
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 719
    :cond_b2
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_15

    .line 722
    .end local v6           #a:Landroid/app/AlertDialog;
    .end local v7           #input:Landroid/widget/EditText;
    .end local v9           #textEntryView:Landroid/view/View;
    :cond_b7
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "Select"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 724
    const/4 v9, 0x0

    .line 726
    .restart local v9       #textEntryView:Landroid/view/View;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030003

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 729
    const v0, 0x7f06000c

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 731
    .local v8, select:Landroid/widget/EditText;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$4;

    invoke-direct {v2, p0, v8}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$4;-><init>(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 765
    .restart local v6       #a:Landroid/app/AlertDialog;
    if-eqz v9, :cond_117

    .line 767
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 770
    :cond_117
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_15

    .line 772
    .end local v6           #a:Landroid/app/AlertDialog;
    .end local v8           #select:Landroid/widget/EditText;
    .end local v9           #textEntryView:Landroid/view/View;
    :cond_11c
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "Help"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 774
    const/4 v9, 0x0

    .line 776
    .restart local v9       #textEntryView:Landroid/view/View;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 779
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 788
    .restart local v6       #a:Landroid/app/AlertDialog;
    if-eqz v9, :cond_15d

    .line 790
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 793
    :cond_15d
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_15
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 627
    const-string v0, "ServiceMode"

    const-string v1, "onPause occur"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 633
    :cond_17
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->EndServiceMode()V

    .line 634
    return-void
.end method
