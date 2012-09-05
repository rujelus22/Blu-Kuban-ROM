.class Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;
.super Ljava/lang/Object;
.source "GripTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/GripTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "handlersensor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;


# direct methods
.method private constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;Lcom/android/samsungtest/SimpleFunctionTest/GripTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)V

    return-void
.end method

.method private changeGrip([F)V
    .registers 11
    .parameter "values"

    .prologue
    const/4 v8, 0x2

    const v7, -0xffff01

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 192
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v2, p1

    if-ge v0, v2, :cond_35

    .line 193
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "values["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 195
    :cond_35
    aget v2, p1, v6

    float-to-int v2, v2

    if-ne v2, v5, :cond_3e

    .line 196
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    iput-boolean v5, v2, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->leftSensorAttach:Z

    .line 198
    :cond_3e
    aget v2, p1, v6

    float-to-int v2, v2

    if-ne v2, v8, :cond_47

    .line 199
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    iput-boolean v5, v2, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->rightSensorAttach:Z

    .line 201
    :cond_47
    aget v2, p1, v6

    float-to-int v2, v2

    if-nez v2, :cond_63

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    iget-boolean v2, v2, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->leftSensorAttach:Z

    if-eqz v2, :cond_63

    .line 202
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->leftGripSensor:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->access$200(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->gripsensing:[Z
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->access$300(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)[Z

    move-result-object v2

    aput-boolean v5, v2, v6

    .line 205
    :cond_63
    aget v2, p1, v6

    float-to-int v2, v2

    if-nez v2, :cond_7f

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    iget-boolean v2, v2, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->rightSensorAttach:Z

    if-eqz v2, :cond_7f

    .line 206
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->rightGripSensor:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->access$400(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->gripsensing:[Z
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->access$300(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)[Z

    move-result-object v2

    aput-boolean v5, v2, v5

    .line 209
    :cond_7f
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->pass:Z
    invoke-static {v2, v5}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->access$502(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;Z)Z

    .line 210
    const/4 v1, 0x0

    .local v1, j:I
    :goto_85
    if-ge v1, v8, :cond_c7

    .line 212
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->gripsensing:[Z
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->access$300(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-nez v2, :cond_c4

    .line 213
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->pass:Z
    invoke-static {v2, v6}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->access$502(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;Z)Z

    .line 214
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->gripsensing:[Z
    invoke-static {v4}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->access$300(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)[Z

    move-result-object v4

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_c4
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 217
    :cond_c7
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->pass:Z
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->access$500(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 218
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DOWN : Pass "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GripTest;

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->onFinish()V
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->access$600(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)V

    .line 221
    :cond_df
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 181
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 184
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 189
    :goto_9
    return-void

    .line 186
    :pswitch_a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;->changeGrip([F)V

    goto :goto_9

    .line 184
    :pswitch_data_10
    .packed-switch 0x9
        :pswitch_a
    .end packed-switch
.end method
