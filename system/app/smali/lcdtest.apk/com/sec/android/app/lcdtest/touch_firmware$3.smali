.class Lcom/sec/android/app/lcdtest/touch_firmware$3;
.super Landroid/os/Handler;
.source "touch_firmware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/lcdtest/touch_firmware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/touch_firmware;


# direct methods
.method constructor <init>(Lcom/sec/android/app/lcdtest/touch_firmware;)V
    .registers 2
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 311
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_178

    .line 364
    :goto_7
    return-void

    .line 313
    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    #calls: Lcom/sec/android/app/lcdtest/touch_firmware;->readReturn(I)Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/sec/android/app/lcdtest/touch_firmware;->access$100(Lcom/sec/android/app/lcdtest/touch_firmware;I)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, val:Ljava/lang/String;
    const-string v1, "TouchFirmware"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleMessage CHK_TSP_RETURN VAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 316
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    iget-object v1, v1, Lcom/sec/android/app/lcdtest/touch_firmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    iget-object v1, v1, Lcom/sec/android/app/lcdtest/touch_firmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 319
    :cond_3f
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    iget-object v1, v1, Lcom/sec/android/app/lcdtest/touch_firmware;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 322
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    #calls: Lcom/sec/android/app/lcdtest/touch_firmware;->updateText()V
    invoke-static {v1}, Lcom/sec/android/app/lcdtest/touch_firmware;->access$200(Lcom/sec/android/app/lcdtest/touch_firmware;)V

    goto :goto_7

    .line 323
    :cond_68
    const-string v1, "Downloading"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 324
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    #calls: Lcom/sec/android/app/lcdtest/touch_firmware;->waitUpdateComplete(I)V
    invoke-static {v1, v5}, Lcom/sec/android/app/lcdtest/touch_firmware;->access$300(Lcom/sec/android/app/lcdtest/touch_firmware;I)V

    goto :goto_7

    .line 326
    :cond_76
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    iget-object v1, v1, Lcom/sec/android/app/lcdtest/touch_firmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    iget-object v1, v1, Lcom/sec/android/app/lcdtest/touch_firmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 329
    :cond_87
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    iget-object v1, v1, Lcom/sec/android/app/lcdtest/touch_firmware;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update complete : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    #calls: Lcom/sec/android/app/lcdtest/touch_firmware;->updateText()V
    invoke-static {v1}, Lcom/sec/android/app/lcdtest/touch_firmware;->access$200(Lcom/sec/android/app/lcdtest/touch_firmware;)V

    goto/16 :goto_7

    .line 337
    .end local v0           #val:Ljava/lang/String;
    :sswitch_b1
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    #calls: Lcom/sec/android/app/lcdtest/touch_firmware;->readReturn(I)Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/sec/android/app/lcdtest/touch_firmware;->access$100(Lcom/sec/android/app/lcdtest/touch_firmware;I)Ljava/lang/String;

    move-result-object v0

    .line 338
    .restart local v0       #val:Ljava/lang/String;
    const-string v1, "TouchFirmware"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleMessage CHK_TSK_RETURN VAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v1, "PASS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_112

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    iget-object v1, v1, Lcom/sec/android/app/lcdtest/touch_firmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    iget-object v1, v1, Lcom/sec/android/app/lcdtest/touch_firmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 343
    :cond_e8
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    iget-object v1, v1, Lcom/sec/android/app/lcdtest/touch_firmware;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 344
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update complete : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 346
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    #calls: Lcom/sec/android/app/lcdtest/touch_firmware;->updateText()V
    invoke-static {v1}, Lcom/sec/android/app/lcdtest/touch_firmware;->access$200(Lcom/sec/android/app/lcdtest/touch_firmware;)V

    goto/16 :goto_7

    .line 347
    :cond_112
    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    .line 348
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    iget-object v1, v1, Lcom/sec/android/app/lcdtest/touch_firmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 349
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    iget-object v1, v1, Lcom/sec/android/app/lcdtest/touch_firmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 351
    :cond_12b
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    iget-object v1, v1, Lcom/sec/android/app/lcdtest/touch_firmware;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 354
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    #calls: Lcom/sec/android/app/lcdtest/touch_firmware;->updateText()V
    invoke-static {v1}, Lcom/sec/android/app/lcdtest/touch_firmware;->access$200(Lcom/sec/android/app/lcdtest/touch_firmware;)V

    goto/16 :goto_7

    .line 356
    :cond_155
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$3;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    #calls: Lcom/sec/android/app/lcdtest/touch_firmware;->waitUpdateComplete(I)V
    invoke-static {v1, v4}, Lcom/sec/android/app/lcdtest/touch_firmware;->access$300(Lcom/sec/android/app/lcdtest/touch_firmware;I)V

    goto/16 :goto_7

    .line 361
    .end local v0           #val:Ljava/lang/String;
    :sswitch_15c
    const-string v1, "TouchFirmware"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlemsg case 5: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 311
    :sswitch_data_178
    .sparse-switch
        0x5 -> :sswitch_15c
        0xaf2 -> :sswitch_8
        0xaf3 -> :sswitch_b1
    .end sparse-switch
.end method
