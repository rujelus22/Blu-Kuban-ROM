.class Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$MainHandler;
.super Landroid/os/Handler;
.source "RilActionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;


# direct methods
.method private constructor <init>(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)V
    .registers 2
    .parameter

    .prologue
    .line 3732
    iput-object p1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$MainHandler;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3732
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$MainHandler;-><init>(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    .line 3735
    const-string v6, "RilActionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    const-string v2, "/sys/class/sec/switch/usb_sel"

    .line 3738
    .local v2, USB_PATH:Ljava/lang/String;
    const-string v1, "/sys/class/sec/switch/uart_sel"

    .line 3739
    .local v1, UART_PATH:Ljava/lang/String;
    const/16 v6, 0x9

    new-array v0, v6, [B

    fill-array-data v0, :array_fc

    .line 3740
    .local v0, MDM:[B
    const/4 v4, 0x0

    .line 3742
    .local v4, out:Ljava/io/FileOutputStream;
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_106

    .line 3801
    :cond_2b
    :goto_2b
    return-void

    .line 3744
    :sswitch_2c
    const-string v6, "RilActionService"

    const-string v7, "usbMdmSelect"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    :try_start_33
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_71
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_54

    .line 3747
    .end local v4           #out:Ljava/io/FileOutputStream;
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_38
    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$MainHandler;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v7, "persist.usb"

    const-string v8, "mdm 00"

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$1100(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3748
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_f4
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_f8

    .line 3756
    if-eqz v5, :cond_49

    .line 3758
    :try_start_46
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4b

    :cond_49
    :goto_49
    move-object v4, v5

    .line 3764
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_2b

    .line 3759
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_4b
    move-exception v3

    .line 3760
    .local v3, e:Ljava/io/IOException;
    const-string v6, "RilActionService"

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 3750
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_54
    move-exception v3

    .line 3751
    .restart local v3       #e:Ljava/io/IOException;
    :goto_55
    :try_start_55
    const-string v6, "RilActionService"

    const-string v7, "File open error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$MainHandler;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v7, 0x3

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v6, v7}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V
    :try_end_62
    .catchall {:try_start_55 .. :try_end_62} :catchall_71

    .line 3756
    if-eqz v4, :cond_2b

    .line 3758
    :try_start_64
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_2b

    .line 3759
    :catch_68
    move-exception v3

    .line 3760
    const-string v6, "RilActionService"

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 3756
    .end local v3           #e:Ljava/io/IOException;
    :catchall_71
    move-exception v6

    :goto_72
    if-eqz v4, :cond_77

    .line 3758
    :try_start_74
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    .line 3761
    :cond_77
    :goto_77
    throw v6

    .line 3759
    :catch_78
    move-exception v3

    .line 3760
    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "RilActionService"

    const-string v8, "File Close error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 3768
    .end local v3           #e:Ljava/io/IOException;
    :sswitch_81
    const-string v6, "RilActionService"

    const-string v7, "uartMdmSelect"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    :try_start_88
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_c8
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8d} :catch_a9

    .line 3773
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :try_start_8d
    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$MainHandler;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v7, "persist.uart"

    const-string v8, "mdm 10"

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$1100(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3774
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_99
    .catchall {:try_start_8d .. :try_end_99} :catchall_ee
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_99} :catch_f1

    .line 3782
    if-eqz v5, :cond_9e

    .line 3784
    :try_start_9b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_a0

    :cond_9e
    :goto_9e
    move-object v4, v5

    .line 3790
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_2b

    .line 3785
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_a0
    move-exception v3

    .line 3786
    .restart local v3       #e:Ljava/io/IOException;
    const-string v6, "RilActionService"

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 3776
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_a9
    move-exception v3

    .line 3777
    .restart local v3       #e:Ljava/io/IOException;
    :goto_aa
    :try_start_aa
    const-string v6, "RilActionService"

    const-string v7, "File open error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$MainHandler;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v7, 0x3

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v6, v7}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V
    :try_end_b7
    .catchall {:try_start_aa .. :try_end_b7} :catchall_c8

    .line 3782
    if-eqz v4, :cond_2b

    .line 3784
    :try_start_b9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_be

    goto/16 :goto_2b

    .line 3785
    :catch_be
    move-exception v3

    .line 3786
    const-string v6, "RilActionService"

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 3782
    .end local v3           #e:Ljava/io/IOException;
    :catchall_c8
    move-exception v6

    :goto_c9
    if-eqz v4, :cond_ce

    .line 3784
    :try_start_cb
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    .line 3787
    :cond_ce
    :goto_ce
    throw v6

    .line 3785
    :catch_cf
    move-exception v3

    .line 3786
    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "RilActionService"

    const-string v8, "File Close error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    .line 3794
    .end local v3           #e:Ljava/io/IOException;
    :sswitch_d8
    const-string v6, "RilActionService"

    const-string v7, "sd card format completed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3795
    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$MainHandler;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v7, "OK"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    .line 3796
    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$MainHandler;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v7, 0x1

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v6, v7}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    goto/16 :goto_2b

    .line 3782
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catchall_ee
    move-exception v6

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_c9

    .line 3776
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_f1
    move-exception v3

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_aa

    .line 3756
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catchall_f4
    move-exception v6

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_72

    .line 3750
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_f8
    move-exception v3

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_55

    .line 3739
    :array_fc
    .array-data 0x1
        0x4ct
        0x54t
        0x45t
        0x4dt
        0x4ft
        0x44t
        0x45t
        0x4dt
        0x0t
    .end array-data

    .line 3742
    nop

    :sswitch_data_106
    .sparse-switch
        0x0 -> :sswitch_2c
        0x1 -> :sswitch_81
        0x7ce -> :sswitch_d8
    .end sparse-switch
.end method
