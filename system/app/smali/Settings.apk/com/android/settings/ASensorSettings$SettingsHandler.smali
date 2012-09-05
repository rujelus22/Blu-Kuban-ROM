.class Lcom/android/settings/ASensorSettings$SettingsHandler;
.super Landroid/os/Handler;
.source "ASensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ASensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ASensorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ASensorSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ASensorSettings;Lcom/android/settings/ASensorSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/android/settings/ASensorSettings$SettingsHandler;-><init>(Lcom/android/settings/ASensorSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/high16 v5, 0x4220

    const-wide/16 v9, 0x32

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 337
    new-array v2, v7, [F

    .line 338
    .local v2, position:[F
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 340
    .local v1, message:Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_fe

    .line 390
    :goto_13
    return-void

    .line 342
    :pswitch_14
    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$1000(Lcom/android/settings/ASensorSettings;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0b069a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 343
    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getPoint([F)[F

    .line 344
    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v3

    #calls: Lcom/android/settings/ASensorSettings$ASensorSettingsView;->updateState(I)V
    invoke-static {v3, v7}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->access$200(Lcom/android/settings/ASensorSettings$ASensorSettingsView;I)V

    .line 345
    aget v3, v2, v8

    iget-object v4, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v4}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    sput v3, Lcom/android/settings/ASensorSettings;->mAniGapX:F

    .line 346
    aget v3, v2, v6

    iget-object v4, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v4}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    sput v3, Lcom/android/settings/ASensorSettings;->mAniGapY:F

    .line 347
    const/16 v3, 0x28

    sput v3, Lcom/android/settings/ASensorSettings;->mAniCount:I

    .line 349
    iput v7, v1, Landroid/os/Message;->what:I

    .line 350
    invoke-virtual {p0, v1, v9, v10}, Lcom/android/settings/ASensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 351
    invoke-virtual {p0, v6}, Lcom/android/settings/ASensorSettings$SettingsHandler;->removeMessages(I)V

    goto :goto_13

    .line 355
    :pswitch_59
    sget v3, Lcom/android/settings/ASensorSettings;->mAniCount:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/android/settings/ASensorSettings;->mAniCount:I

    if-ltz v3, :cond_b0

    .line 356
    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, deviceType:Ljava/lang/String;
    if-eqz v0, :cond_99

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 358
    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v3

    sget v4, Lcom/android/settings/ASensorSettings;->mAniGapY:F

    sget v5, Lcom/android/settings/ASensorSettings;->mAniCount:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sget v5, Lcom/android/settings/ASensorSettings;->mAniGapX:F

    sget v6, Lcom/android/settings/ASensorSettings;->mAniCount:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->setPoint(FF)V

    .line 363
    :goto_86
    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->invalidate()V

    .line 364
    invoke-virtual {p0, v7}, Lcom/android/settings/ASensorSettings$SettingsHandler;->removeMessages(I)V

    .line 365
    iput v7, v1, Landroid/os/Message;->what:I

    .line 366
    invoke-virtual {p0, v1, v9, v10}, Lcom/android/settings/ASensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_13

    .line 360
    :cond_99
    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v3

    sget v4, Lcom/android/settings/ASensorSettings;->mAniGapX:F

    sget v5, Lcom/android/settings/ASensorSettings;->mAniCount:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sget v5, Lcom/android/settings/ASensorSettings;->mAniGapY:F

    neg-float v5, v5

    sget v6, Lcom/android/settings/ASensorSettings;->mAniCount:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->setPoint(FF)V

    goto :goto_86

    .line 369
    .end local v0           #deviceType:Ljava/lang/String;
    :cond_b0
    invoke-virtual {p0, v7}, Lcom/android/settings/ASensorSettings$SettingsHandler;->removeMessages(I)V

    .line 370
    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    .line 371
    invoke-virtual {p0, v1, v9, v10}, Lcom/android/settings/ASensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 372
    const/16 v3, 0x28

    sput v3, Lcom/android/settings/ASensorSettings;->mAniCount:I

    goto/16 :goto_13

    .line 377
    :pswitch_bf
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/settings/ASensorSettings$SettingsHandler;->removeMessages(I)V

    .line 378
    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$1100(Lcom/android/settings/ASensorSettings;)Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->runAccCalibration(I)I

    .line 379
    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$1100(Lcom/android/settings/ASensorSettings;)Landroid/hardware/SensorManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    iget-object v4, v4, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$SensorHandler;

    iget-object v5, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;
    invoke-static {v5}, Lcom/android/settings/ASensorSettings;->access$1200(Lcom/android/settings/ASensorSettings;)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 382
    invoke-static {v8}, Lcom/android/settings/ASensorSettings;->access$302(I)I

    .line 383
    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v3

    #calls: Lcom/android/settings/ASensorSettings$ASensorSettingsView;->updateState(I)V
    invoke-static {v3, v6}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->access$200(Lcom/android/settings/ASensorSettings$ASensorSettingsView;I)V

    .line 384
    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$1000(Lcom/android/settings/ASensorSettings;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0b0699

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 385
    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #calls: Lcom/android/settings/ASensorSettings;->diplayCompleted()V
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$1300(Lcom/android/settings/ASensorSettings;)V

    goto/16 :goto_13

    .line 340
    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_14
        :pswitch_59
        :pswitch_bf
    .end packed-switch
.end method
