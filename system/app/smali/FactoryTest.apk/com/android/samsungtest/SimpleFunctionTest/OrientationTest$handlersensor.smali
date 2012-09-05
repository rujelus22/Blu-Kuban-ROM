.class Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;
.super Ljava/lang/Object;
.source "OrientationTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "handlersensor"
.end annotation


# instance fields
.field private data:[F

.field df:Ljava/text/NumberFormat;

.field private horizontalPass:Z

.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;

.field private verticalPass:Z


# direct methods
.method private constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;)V
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 312
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->verticalPass:Z

    .line 315
    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->horizontalPass:Z

    .line 316
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->data:[F

    .line 317
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->df:Ljava/text/NumberFormat;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;)V

    return-void
.end method

.method private isHorizontal()Z
    .registers 7

    .prologue
    const/high16 v5, 0x42f0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 362
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->data:[F

    aget v2, v2, v1

    const/high16 v3, 0x433e

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_26

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->data:[F

    aget v2, v2, v0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_26

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->data:[F

    aget v2, v2, v0

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_26

    .line 363
    iget-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->verticalPass:Z

    if-eqz v1, :cond_25

    .line 364
    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->horizontalPass:Z

    .line 374
    :cond_25
    :goto_25
    return v0

    .line 368
    :cond_26
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->data:[F

    aget v2, v2, v1

    const/high16 v3, -0x3cc2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_47

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->data:[F

    aget v2, v2, v0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_47

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->data:[F

    aget v2, v2, v0

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_47

    .line 369
    iget-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->verticalPass:Z

    if-eqz v1, :cond_25

    .line 370
    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->horizontalPass:Z

    goto :goto_25

    :cond_47
    move v0, v1

    .line 374
    goto :goto_25
.end method

.method private isPass()V
    .registers 3

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->verticalPass:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->horizontalPass:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mTestPass:Z
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 394
    const-string v0, "Orientation Test"

    const-string v1, "Pass is completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;

    const/4 v1, 0x1

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->mTestPass:Z
    invoke-static {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->access$102(Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;Z)Z

    .line 397
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;

    invoke-virtual {v0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->startFinish()V

    .line 400
    :cond_22
    return-void
.end method

.method private isVertical()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 351
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->data:[F

    aget v2, v2, v1

    const/high16 v3, -0x3dc0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3f

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->data:[F

    aget v2, v2, v1

    const/high16 v3, 0x4240

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3f

    .line 352
    const-string v2, "OrientationTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[[x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->data:[F

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->verticalPass:Z

    .line 357
    :goto_3e
    return v0

    :cond_3f
    move v0, v1

    goto :goto_3e
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 320
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 324
    const/high16 v0, 0x41c0

    .line 325
    .local v0, m_Rev_Convert:F
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v4, :cond_8a

    .line 326
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->data:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    neg-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v1, v5

    .line 327
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->data:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    mul-float/2addr v2, v0

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v1, v4

    .line 328
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->data:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    neg-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v1, v6

    .line 329
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;

    iget-object v1, v1, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->x:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->data:[F

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;

    iget-object v1, v1, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->y:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Y : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->data:[F

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;

    iget-object v1, v1, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->z:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Z : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->data:[F

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :cond_8a
    const-string v1, "Orientation"

    const-string v2, "On Sensor changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 339
    const-string v1, "Orientation"

    const-string v2, "vertical now.. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_9e
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 343
    const-string v1, "Orientation"

    const-string v2, "horizontal now.. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_ab
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$handlersensor;->isPass()V

    .line 347
    return-void
.end method
