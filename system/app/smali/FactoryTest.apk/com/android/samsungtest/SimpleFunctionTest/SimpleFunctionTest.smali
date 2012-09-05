.class public Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;
.super Landroid/app/Activity;
.source "SimpleFunctionTest.java"


# instance fields
.field private IS_PASS_LOOPBACK_SPK_MODE:Z

.field private final LOG_TAG:Ljava/lang/String;

.field private MegaData:[B

.field private VgaData:[B

.field private mCurrKey:I

.field private mCurrTime:J

.field private mFactoryTestApp:Ljava/lang/String;

.field private mPrevKey:I

.field private mPrevTime:J

.field private mSimpleTest_start:Ljava/lang/String;

.field private mWindowManager:Landroid/view/IWindowManager;

.field pm:Landroid/os/PowerManager;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->MegaData:[B

    .line 73
    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->VgaData:[B

    .line 75
    const-string v0, "SimpleFunctionTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->LOG_TAG:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mFactoryTestApp:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->IS_PASS_LOOPBACK_SPK_MODE:Z

    .line 88
    const-string v0, "FALSE"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mSimpleTest_start:Ljava/lang/String;

    return-void
.end method

.method private forceFinishActivity(I)V
    .registers 6
    .parameter "num"

    .prologue
    .line 211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_4a

    .line 213
    const-string v1, "SimpleFunctionTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ForcedFinishActivity :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sparse-switch v0, :sswitch_data_4c

    .line 211
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    :sswitch_21
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->finishActivity(I)V

    goto :goto_1e

    .line 221
    :sswitch_26
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->finishActivity(I)V

    goto :goto_1e

    .line 224
    :sswitch_2b
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->finishActivity(I)V

    goto :goto_1e

    .line 227
    :sswitch_31
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->finishActivity(I)V

    goto :goto_1e

    .line 230
    :sswitch_36
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->finishActivity(I)V

    goto :goto_1e

    .line 233
    :sswitch_3b
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->finishActivity(I)V

    goto :goto_1e

    .line 236
    :sswitch_40
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->finishActivity(I)V

    goto :goto_1e

    .line 239
    :sswitch_45
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->finishActivity(I)V

    goto :goto_1e

    .line 243
    :cond_4a
    return-void

    .line 215
    nop

    :sswitch_data_4c
    .sparse-switch
        0x0 -> :sswitch_21
        0x1 -> :sswitch_26
        0x2 -> :sswitch_31
        0x3 -> :sswitch_36
        0x4 -> :sswitch_3b
        0x5 -> :sswitch_40
        0x6 -> :sswitch_45
        0x2e -> :sswitch_2b
    .end sparse-switch
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 163
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 164
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 165
    const/4 v0, 0x1

    .line 171
    :goto_24
    return v0

    .line 169
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mPrevKey:I

    .line 170
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mPrevTime:J

    .line 171
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public FailFinish()V
    .registers 2

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->setResult(I)V

    .line 323
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->finish()V

    .line 324
    return-void
.end method

.method public OkFinish()V
    .registers 2

    .prologue
    .line 327
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->setResult(I)V

    .line 328
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->finish()V

    .line 329
    return-void
.end method

.method public cameraTest()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    const-string v1, "camera_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string v1, "ommision_test"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    invoke-direct {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->forceFinishActivity(I)V

    .line 263
    invoke-virtual {p0, v0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 265
    return-void
.end method

.method public intensityTest()V
    .registers 3

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->forceFinishActivity(I)V

    .line 306
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    return-void
.end method

.method public motorTest()V
    .registers 3

    .prologue
    .line 254
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 256
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 332
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 333
    const-string v0, "SimpleFunctionTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ResultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-nez p2, :cond_48

    .line 336
    const-string v0, "SimpleFunctionTest"

    const-string v1, "Finished by Result code"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->FailFinish()V

    .line 340
    :cond_48
    sparse-switch p1, :sswitch_data_a4

    .line 397
    :cond_4b
    :goto_4b
    return-void

    .line 342
    :sswitch_4c
    const/16 v0, 0x1e

    if-ne p2, v0, :cond_4b

    .line 343
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->cameraTest()V

    goto :goto_4b

    .line 348
    :sswitch_54
    if-ne p2, v3, :cond_4b

    .line 350
    const-string v0, "capture_data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->MegaData:[B

    .line 352
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->MegaData:[B

    if-eqz v0, :cond_66

    .line 353
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->vgacameraTest()V

    goto :goto_4b

    .line 355
    :cond_66
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->FailFinish()V

    goto :goto_4b

    .line 360
    :sswitch_6a
    if-ne p2, v3, :cond_4b

    .line 362
    const-string v0, "capture_data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->VgaData:[B

    .line 364
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->VgaData:[B

    if-eqz v0, :cond_80

    .line 365
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->MegaData:[B

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->VgaData:[B

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->orientationTest([B[B)V

    goto :goto_4b

    .line 367
    :cond_80
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->FailFinish()V

    goto :goto_4b

    .line 372
    :sswitch_84
    const/16 v0, 0x1f

    if-ne p2, v0, :cond_4b

    .line 373
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->OkFinish()V

    goto :goto_4b

    .line 379
    :sswitch_8c
    const/16 v0, 0x20

    if-ne p2, v0, :cond_4b

    .line 380
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->intensityTest()V

    goto :goto_4b

    .line 385
    :sswitch_94
    const/16 v0, 0x21

    if-ne p2, v0, :cond_4b

    .line 386
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->OkFinish()V

    goto :goto_4b

    .line 392
    :sswitch_9c
    const/16 v0, 0x23

    if-ne p2, v0, :cond_4b

    .line 393
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->OkFinish()V

    goto :goto_4b

    .line 340
    :sswitch_data_a4
    .sparse-switch
        0x0 -> :sswitch_4c
        0x1 -> :sswitch_54
        0x2 -> :sswitch_84
        0x3 -> :sswitch_8c
        0x4 -> :sswitch_94
        0x6 -> :sswitch_9c
        0x2e -> :sswitch_6a
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const-string v4, "SimpleFunctionTest"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->pm:Landroid/os/PowerManager;

    .line 94
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->pm:Landroid/os/PowerManager;

    const/16 v5, 0xa

    const-string v6, "SimpleFunctionTest"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 95
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mWindowManager:Landroid/view/IWindowManager;

    .line 96
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 97
    iput v7, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mPrevKey:I

    .line 98
    iput-wide v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mPrevTime:J

    .line 99
    iput v7, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mCurrKey:I

    .line 100
    iput-wide v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mCurrTime:J

    .line 102
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, i:Landroid/content/Intent;
    const-string v4, "SIMPLE_FUNCTION_TEST_START"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mFactoryTestApp:Ljava/lang/String;

    .line 104
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mFactoryTestApp:Ljava/lang/String;

    const-string v5, "SIMPLE_FUNCTION_TEST_START"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 105
    sput-boolean v8, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sft_status:Z

    .line 108
    :cond_55
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    .line 109
    .local v2, o:Ljava/lang/Object;
    if-eqz v2, :cond_91

    .line 110
    const-string v4, "SimpleFunctionTest"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 112
    check-cast v1, Ljava/util/HashMap;

    .line 113
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "mSimpleTest_start"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, sts:Ljava/lang/String;
    const-string v4, "SimpleFunctionTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate() sts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v4, "TRUE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 118
    sput-boolean v8, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sft_status:Z

    .line 125
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #sts:Ljava/lang/String;
    :cond_91
    :goto_91
    const-string v4, "SimpleFunctionTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate() FunctionTest.sft_status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sft_status:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-boolean v4, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sft_status:Z

    if-eqz v4, :cond_bb

    .line 128
    const-string v4, "SimpleFunctionTest"

    const-string v5, "Starting Motor test"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sput-boolean v7, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sft_status:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->motorTest()V

    .line 132
    :cond_bb
    return-void

    .line 121
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3       #sts:Ljava/lang/String;
    :cond_bc
    sput-boolean v7, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sft_status:Z

    goto :goto_91
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 191
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 192
    const-string v0, "SimpleFunctionTest"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 145
    const-string v0, "SimpleFunctionTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOWN, keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mCurrKey:I

    .line 148
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mCurrTime:J

    .line 149
    const/4 v0, 0x4

    if-ne p1, v0, :cond_45

    .line 150
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->BackKeyCheck()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_44

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_44

    .line 152
    const-string v0, "SimpleFunctionTest"

    const-string v1, "This is back_key"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->finish()V

    .line 159
    :cond_44
    :goto_44
    return v3

    .line 155
    :cond_45
    const/4 v0, 0x6

    if-ne p1, v0, :cond_44

    .line 156
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->finish()V

    goto :goto_44
.end method

.method public onPause()V
    .registers 6

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 199
    :try_start_3
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 200
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_28

    .line 206
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 207
    const-string v1, "SimpleFunctionTest"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void

    .line 202
    :catch_28
    move-exception v0

    .line 203
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 178
    :try_start_3
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 179
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_28

    .line 185
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 186
    const-string v1, "SimpleFunctionTest"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 181
    :catch_28
    move-exception v0

    .line 182
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 136
    const-string v1, "SimpleFunctionTest"

    const-string v2, "onRetainNonConfigurationInstance() start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "mSimpleTest_start"

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->mSimpleTest_start:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-object v0
.end method

.method public orientationTest([B[B)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    const-string v1, "Mega_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 279
    const-string v1, "Vga_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 280
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->forceFinishActivity(I)V

    .line 281
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 282
    return-void
.end method

.method public vgacameraTest()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 268
    const-string v0, "SimpleFunctionTest"

    const-string v1, "vgacameraTest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    const-string v1, "camera_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    const-string v1, "ommision_test"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    invoke-direct {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->forceFinishActivity(I)V

    .line 273
    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 274
    return-void
.end method
