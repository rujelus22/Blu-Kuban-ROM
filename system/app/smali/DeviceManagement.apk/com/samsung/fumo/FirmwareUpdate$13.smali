.class Lcom/samsung/fumo/FirmwareUpdate$13;
.super Landroid/os/Handler;
.source "FirmwareUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/fumo/FirmwareUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/fumo/FirmwareUpdate;


# direct methods
.method constructor <init>(Lcom/samsung/fumo/FirmwareUpdate;)V
    .registers 2
    .parameter

    .prologue
    .line 906
    iput-object p1, p0, Lcom/samsung/fumo/FirmwareUpdate$13;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 910
    :try_start_0
    const-string v1, "FirmwareUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling Message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const-string v1, "FirmwareUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog sessionstatus = : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate$13;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    #getter for: Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I
    invoke-static {v3}, Lcom/samsung/fumo/FirmwareUpdate;->access$500(Lcom/samsung/fumo/FirmwareUpdate;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_76

    .line 934
    :cond_3d
    :goto_3d
    return-void

    .line 917
    :pswitch_3e
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate$13;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    #calls: Lcom/samsung/fumo/FirmwareUpdate;->cancelSession()V
    invoke-static {v1}, Lcom/samsung/fumo/FirmwareUpdate;->access$200(Lcom/samsung/fumo/FirmwareUpdate;)V

    .line 918
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate$13;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    #getter for: Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/samsung/fumo/FirmwareUpdate;->access$400(Lcom/samsung/fumo/FirmwareUpdate;)Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_6b

    .line 919
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate$13;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    #calls: Lcom/samsung/fumo/FirmwareUpdate;->fumoDone()V
    invoke-static {v1}, Lcom/samsung/fumo/FirmwareUpdate;->access$300(Lcom/samsung/fumo/FirmwareUpdate;)V

    .line 925
    :goto_50
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate$13;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    #getter for: Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z
    invoke-static {v1}, Lcom/samsung/fumo/FirmwareUpdate;->access$600(Lcom/samsung/fumo/FirmwareUpdate;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    .line 926
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate$13;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z
    invoke-static {v1, v2}, Lcom/samsung/fumo/FirmwareUpdate;->access$602(Lcom/samsung/fumo/FirmwareUpdate;Z)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_3d

    .line 931
    :catch_60
    move-exception v0

    .line 932
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FirmwareUpdate"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 922
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6b
    :try_start_6b
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate$13;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    #getter for: Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/samsung/fumo/FirmwareUpdate;->access$400(Lcom/samsung/fumo/FirmwareUpdate;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_74} :catch_60

    goto :goto_50

    .line 913
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3e
    .end packed-switch
.end method
