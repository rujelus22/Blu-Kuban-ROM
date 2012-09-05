.class Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1$1;
.super Ljava/util/TimerTask;
.source "IntensityTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;)V
    .registers 2
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1$1;->this$1:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 172
    const-string v1, "IntensityTest"

    const-string v2, "startSensing run"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1$1;->this$1:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;

    iget-object v1, v1, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->getLightSensorValue()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, lightsensorValue:Ljava/lang/String;
    const-string v1, "IntensityTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrightnessValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "changeCnt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1$1;->this$1:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;

    iget-object v3, v3, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->changeCnt:I
    invoke-static {v3}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$200(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1$1;->this$1:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;

    iget-object v1, v1, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->changeCnt:I
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$200(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)I

    move-result v1

    if-lt v1, v4, :cond_6e

    .line 178
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1$1;->this$1:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;

    iget-object v1, v1, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->changeCnt:I
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$200(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_57

    .line 179
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1$1;->this$1:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;

    iget-object v1, v1, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->changeCnt:I
    invoke-static {v1, v4}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$202(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;I)I

    .line 181
    :cond_57
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1$1;->this$1:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;

    iget-object v1, v1, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1$1;->this$1:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;

    iget-object v2, v2, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->isDarkCondition(I)Z
    invoke-static {v2, v3}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$300(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;I)Z

    move-result v2

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->isDark(Z)V
    invoke-static {v1, v2}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$400(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;Z)V

    .line 183
    :cond_6e
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1$1;->this$1:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;

    iget-object v1, v1, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$208(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)I

    .line 185
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1$1;->this$1:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;

    iget-object v1, v1, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->pass:Z
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$500(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Z

    move-result v1

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1$1;->this$1:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;

    iget-object v1, v1, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->pass2:Z
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$600(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 186
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1$1;->this$1:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;

    iget-object v1, v1, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    invoke-virtual {v1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->onFinish()V

    .line 188
    :cond_90
    return-void
.end method
