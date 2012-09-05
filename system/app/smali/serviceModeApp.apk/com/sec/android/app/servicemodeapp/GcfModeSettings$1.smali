.class Lcom/sec/android/app/servicemodeapp/GcfModeSettings$1;
.super Landroid/os/Handler;
.source "GcfModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/GcfModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$1;->this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 62
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 64
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_ae

    .line 108
    :goto_e
    return-void

    .line 68
    :pswitch_f
    const-string v2, "GcfModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QUERY_RAMDUMP_STATE_DONE : buf[3] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$1;->this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;

    #getter for: Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->buf:[B
    invoke-static {v4}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->access$000(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)[B

    move-result-object v4

    aget-byte v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_8d

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_8d

    .line 72
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 74
    .local v1, buf:[B
    aget-byte v2, v1, v5

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$1;->this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;

    #getter for: Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mOem:Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->access$100(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x7

    if-ne v2, v3, :cond_85

    aget-byte v2, v1, v6

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$1;->this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;

    #getter for: Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mOem:Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->access$100(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v2, v8, :cond_85

    aget-byte v2, v1, v7

    const/4 v3, 0x5

    if-ne v2, v3, :cond_85

    .line 78
    const/4 v2, 0x4

    aget-byte v2, v1, v2

    if-nez v2, :cond_74

    .line 80
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$1;->this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;

    #setter for: Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->bGcfMode:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->access$202(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;Z)Z

    .line 81
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$1;->this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;

    #getter for: Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mGcfMode:Landroid/widget/Button;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->access$300(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "Gcf Mode Disabled"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 85
    :cond_74
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$1;->this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;

    #setter for: Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->bGcfMode:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->access$202(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;Z)Z

    .line 86
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$1;->this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;

    #getter for: Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mGcfMode:Landroid/widget/Button;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->access$300(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "Gcf Mode Enabled"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 90
    :cond_85
    const-string v2, "GcfModeSettings"

    const-string v3, "GCF_MODE_GET_DONE error#1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 94
    .end local v1           #buf:[B
    :cond_8d
    const-string v2, "GcfModeSettings"

    const-string v3, "GCF_MODE_GET_DONE error#2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 101
    :pswitch_96
    const-string v2, "GcfModeSettings"

    const-string v3, "GCF_MODE_SET_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$1;->this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$1;->this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;

    #getter for: Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mOem:Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->access$100(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->SendData(I)V
    invoke-static {v2, v8}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->access$400(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;I)V

    goto/16 :goto_e

    .line 64
    nop

    :pswitch_data_ae
    .packed-switch 0x3f4
        :pswitch_f
        :pswitch_96
    .end packed-switch
.end method
