.class public Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;
.super Landroid/app/Activity;
.source "OrientationTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;
    }
.end annotation


# static fields
.field private static megaRotatedBitmap:Landroid/graphics/Bitmap;

.field private static vgaRotatedBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final Nomal_Image:I

.field private final VGACAM_Image:I

.field private mCurrKey:I

.field private mCurrTime:J

.field private mFinishTimer:Ljava/util/TimerTask;

.field private mPrevKey:I

.field private mPrevTime:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTestPass:Z

.field private mTimer:Ljava/util/Timer;

.field private mToastDisplayed:Z

.field private mWindowManager:Landroid/view/IWindowManager;

.field private megaimage:Landroid/widget/ImageView;

.field private mlistner:Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;

.field pm:Landroid/os/PowerManager;

.field private vgaimage:Landroid/widget/ImageView;

.field wl:Landroid/os/PowerManager$WakeLock;

.field x:Landroid/widget/TextView;

.field y:Landroid/widget/TextView;

.field z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mTestPass:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mToastDisplayed:Z

    .line 46
    const-string v0, "OrientationTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->LOG_TAG:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->Nomal_Image:I

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->VGACAM_Image:I

    .line 312
    return-void
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mTestPass:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mTestPass:Z

    return p1
.end method

.method private init()V
    .registers 6

    .prologue
    .line 250
    const v2, 0x7f0900b3

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->megaimage:Landroid/widget/ImageView;

    .line 251
    const v2, 0x7f0900b4

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->vgaimage:Landroid/widget/ImageView;

    .line 253
    new-instance v2, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$1;)V

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mlistner:Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;

    .line 256
    :try_start_1e
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 257
    const-string v2, "Orientation"

    const-string v3, "Got the sensor service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 259
    .local v1, sensor:Landroid/hardware/Sensor;
    const-string v2, "Orientation"

    const-string v3, "Got the accelerometer sensor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mlistner:Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 261
    const-string v2, "Orientation"

    const-string v3, "Successfully registered the sensor listner"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_4c} :catch_4d

    .line 266
    .end local v1           #sensor:Landroid/hardware/Sensor;
    :goto_4c
    return-void

    .line 262
    :catch_4d
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Orientation"

    const-string v3, "***@@@@****Exception*****@@@@@*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method private rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "originalBitmap"
    .parameter "image_type"

    .prologue
    const/4 v0, 0x1

    .line 198
    :try_start_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 200
    .local v5, matrix:Landroid/graphics/Matrix;
    if-ne p2, v0, :cond_25

    .line 201
    const/high16 v0, -0x3d4c

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 202
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 207
    :goto_14
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 215
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :goto_24
    return-object v8

    .line 204
    .restart local v5       #matrix:Landroid/graphics/Matrix;
    :cond_25
    const/high16 v0, 0x42b4

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    goto :goto_14

    .line 210
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :catch_2b
    move-exception v7

    .line 212
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "Orientation Test"

    const-string v1, "**@@@@####****Exception rotateBitmap!!!***####@@@@***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v8, 0x0

    goto :goto_24
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 300
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 301
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 302
    const/4 v0, 0x1

    .line 308
    :goto_24
    return v0

    .line 306
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mPrevKey:I

    .line 307
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mPrevTime:J

    .line 308
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v4, 0x7f030029

    invoke-virtual {p0, v4}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->setContentView(I)V

    .line 71
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->pm:Landroid/os/PowerManager;

    .line 72
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->pm:Landroid/os/PowerManager;

    const/16 v5, 0xa

    const-string v6, "OrientationTest"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 73
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mWindowManager:Landroid/view/IWindowManager;

    .line 74
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 76
    iput v7, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mPrevKey:I

    .line 77
    iput-wide v8, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mPrevTime:J

    .line 78
    iput v7, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mCurrKey:I

    .line 79
    iput-wide v8, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mCurrTime:J

    .line 81
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->init()V

    .line 82
    const-string v4, "OrientationTest"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "Mega_data"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 86
    .local v0, MegaData:[B
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "Vga_data"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 88
    .local v2, VgaData:[B
    array-length v4, v0

    invoke-static {v0, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 89
    .local v1, MegaPic:Landroid/graphics/Bitmap;
    array-length v4, v2

    invoke-static {v2, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 91
    .local v3, VgaPic:Landroid/graphics/Bitmap;
    invoke-direct {p0, v1, v7}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->megaRotatedBitmap:Landroid/graphics/Bitmap;

    .line 92
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->vgaRotatedBitmap:Landroid/graphics/Bitmap;

    .line 94
    sget-object v4, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->megaRotatedBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_c7

    .line 96
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->megaimage:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v6, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->megaRotatedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :goto_80
    sget-object v4, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->vgaRotatedBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_d2

    .line 105
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->vgaimage:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v6, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->vgaRotatedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :goto_90
    const v4, 0x7f0900b0

    invoke-virtual {p0, v4}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->x:Landroid/widget/TextView;

    .line 114
    const v4, 0x7f0900b1

    invoke-virtual {p0, v4}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->y:Landroid/widget/TextView;

    .line 115
    const v4, 0x7f0900b2

    invoke-virtual {p0, v4}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->z:Landroid/widget/TextView;

    .line 117
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->x:Landroid/widget/TextView;

    const-string v5, "X : "

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->y:Landroid/widget/TextView;

    const-string v5, "Y : "

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->z:Landroid/widget/TextView;

    const-string v5, "Z : "

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void

    .line 100
    :cond_c7
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->megaimage:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_80

    .line 109
    :cond_d2
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->vgaimage:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_90
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 151
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mlistner:Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 153
    const-string v0, "OrientationTest"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public onExit()V
    .registers 3

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->setResult(I)V

    .line 244
    const-string v0, "Orientation Test"

    const-string v1, "Result Canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->finish()V

    .line 246
    return-void
.end method

.method public onFinish()V
    .registers 3

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mToastDisplayed:Z

    if-nez v0, :cond_7

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mToastDisplayed:Z

    .line 224
    :cond_7
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->setResult(I)V

    .line 225
    const-string v0, "Orientation Test"

    const-string v1, "Result OK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->finish()V

    .line 228
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 271
    const-string v0, "KEYCODE"

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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mCurrKey:I

    .line 274
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mCurrTime:J

    .line 276
    const/4 v0, 0x4

    if-ne p1, v0, :cond_45

    .line 277
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->BackKeyCheck()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_44

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_44

    .line 279
    const-string v0, "KEYCODE"

    const-string v1, "This is back_key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->onExit()V

    .line 296
    :cond_44
    :goto_44
    return v3

    .line 282
    :cond_45
    const/16 v0, 0x17

    if-ne p1, v0, :cond_4d

    .line 283
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->finish()V

    goto :goto_44

    .line 287
    :cond_4d
    const/4 v0, 0x3

    if-ne p1, v0, :cond_58

    .line 288
    const-string v0, "OrientationTest"

    const-string v1, "KEYCODE_HOME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 289
    :cond_58
    const/16 v0, 0x54

    if-ne p1, v0, :cond_64

    .line 290
    const-string v0, "OrientationTest"

    const-string v1, "KEYCODE_SEARCH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 291
    :cond_64
    const/16 v0, 0x52

    if-ne p1, v0, :cond_44

    .line 292
    const-string v0, "OrientationTest"

    const-string v1, "KEYCODE_MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method public onPause()V
    .registers 6

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 138
    :try_start_3
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 139
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_28

    .line 145
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 146
    const-string v1, "OrientationTest"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 141
    :catch_28
    move-exception v0

    .line 142
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    :try_start_3
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 126
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_28

    .line 131
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 132
    const-string v1, "OrientationTest"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 128
    :catch_28
    move-exception v0

    .line 129
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b
.end method

.method public startFinish()V
    .registers 5

    .prologue
    .line 231
    const-string v0, "Orientation Test"

    const-string v1, "Timer Started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mFinishTimer:Ljava/util/TimerTask;

    .line 237
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mTimer:Ljava/util/Timer;

    .line 238
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mFinishTimer:Ljava/util/TimerTask;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 239
    return-void
.end method
