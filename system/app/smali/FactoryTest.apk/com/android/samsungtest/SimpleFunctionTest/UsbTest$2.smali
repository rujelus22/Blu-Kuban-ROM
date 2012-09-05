.class Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;)V
    .registers 2
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 203
    monitor-enter p0

    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->access$000(Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Functiontest] onReceiveIntent2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_aa

    .line 209
    :try_start_22
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 211
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    iget-object v3, v3, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->pm:Landroid/os/PowerManager;

    if-nez v3, :cond_3e

    .line 213
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    const-string v5, "power"

    invoke-virtual {v3, v5}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v4, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->pm:Landroid/os/PowerManager;

    .line 216
    :cond_3e
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    iget-object v3, v3, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->pm:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->getPlugType()I

    move-result v2

    .line 217
    .local v2, plugType:I
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->access$000(Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plugType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    if-eq v2, v6, :cond_9f

    .line 220
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->access$000(Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "USB Test PASS 1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->txtresult:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0800c2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 222
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->txtresult:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;)Landroid/widget/TextView;

    move-result-object v3

    const v4, -0xffff01

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    const/4 v4, 0x1

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mbsuccess:Z
    invoke-static {v3, v4}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->access$202(Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;Z)Z

    .line 224
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    iget-object v3, v3, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_9f
    .catchall {:try_start_22 .. :try_end_9f} :catchall_aa
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_9f} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_9f} :catch_ad

    .line 234
    .end local v2           #plugType:I
    :cond_9f
    :goto_9f
    monitor-exit p0

    return-void

    .line 228
    :catch_a1
    move-exception v1

    .line 229
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_a2
    const-string v3, "FactoryTestApp"

    const-string v4, "BroadcastReceiver NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_aa

    goto :goto_9f

    .line 203
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catchall_aa
    move-exception v3

    monitor-exit p0

    throw v3

    .line 230
    .restart local v0       #action:Ljava/lang/String;
    :catch_ad
    move-exception v1

    .line 231
    .local v1, e:Ljava/lang/Exception;
    :try_start_ae
    const-string v3, "FactoryTestApp"

    const-string v4, "BroadcastReceiver exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_ae .. :try_end_b5} :catchall_aa

    goto :goto_9f
.end method
