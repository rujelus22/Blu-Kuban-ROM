.class Lcom/samsung/prlupdate/PRLUpdate$13;
.super Landroid/os/Handler;
.source "PRLUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/prlupdate/PRLUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/prlupdate/PRLUpdate;


# direct methods
.method constructor <init>(Lcom/samsung/prlupdate/PRLUpdate;)V
    .registers 2
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/samsung/prlupdate/PRLUpdate$13;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 752
    :try_start_0
    const-string v1, "PRLUpdate"

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

    .line 754
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_68

    .line 781
    :goto_1f
    :pswitch_1f
    return-void

    .line 758
    :pswitch_20
    iget-object v1, p0, Lcom/samsung/prlupdate/PRLUpdate$13;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #calls: Lcom/samsung/prlupdate/PRLUpdate;->cancelSession()V
    invoke-static {v1}, Lcom/samsung/prlupdate/PRLUpdate;->access$200(Lcom/samsung/prlupdate/PRLUpdate;)V

    .line 760
    iget-object v1, p0, Lcom/samsung/prlupdate/PRLUpdate$13;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #getter for: Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/samsung/prlupdate/PRLUpdate;->access$600(Lcom/samsung/prlupdate/PRLUpdate;)Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_3e

    .line 761
    iget-object v1, p0, Lcom/samsung/prlupdate/PRLUpdate$13;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #calls: Lcom/samsung/prlupdate/PRLUpdate;->prlDone()V
    invoke-static {v1}, Lcom/samsung/prlupdate/PRLUpdate;->access$300(Lcom/samsung/prlupdate/PRLUpdate;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_1f

    .line 777
    :catch_33
    move-exception v0

    .line 779
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PRLUpdate"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 763
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3e
    :try_start_3e
    iget-object v1, p0, Lcom/samsung/prlupdate/PRLUpdate$13;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #getter for: Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/samsung/prlupdate/PRLUpdate;->access$600(Lcom/samsung/prlupdate/PRLUpdate;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1f

    .line 772
    :pswitch_48
    const-string v1, "PRLUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog KEYCODE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v1, p0, Lcom/samsung/prlupdate/PRLUpdate$13;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #calls: Lcom/samsung/prlupdate/PRLUpdate;->cancelSession()V
    invoke-static {v1}, Lcom/samsung/prlupdate/PRLUpdate;->access$200(Lcom/samsung/prlupdate/PRLUpdate;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_67} :catch_33

    goto :goto_1f

    .line 754
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_48
        :pswitch_48
    .end packed-switch
.end method
