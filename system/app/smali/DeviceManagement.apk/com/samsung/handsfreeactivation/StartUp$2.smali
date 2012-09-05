.class Lcom/samsung/handsfreeactivation/StartUp$2;
.super Landroid/os/Handler;
.source "StartUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/handsfreeactivation/StartUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/handsfreeactivation/StartUp;


# direct methods
.method constructor <init>(Lcom/samsung/handsfreeactivation/StartUp;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/handsfreeactivation/StartUp$2;->this$0:Lcom/samsung/handsfreeactivation/StartUp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 103
    :try_start_0
    const-string v1, "StartUp"

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

    .line 104
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_38

    .line 124
    :goto_1f
    :pswitch_1f
    return-void

    .line 108
    :pswitch_20
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp$2;->this$0:Lcom/samsung/handsfreeactivation/StartUp;

    #calls: Lcom/samsung/handsfreeactivation/StartUp;->doCancel()V
    invoke-static {v1}, Lcom/samsung/handsfreeactivation/StartUp;->access$100(Lcom/samsung/handsfreeactivation/StartUp;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_1f

    .line 121
    :catch_26
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "StartUp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 115
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_31
    :try_start_31
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp$2;->this$0:Lcom/samsung/handsfreeactivation/StartUp;

    #calls: Lcom/samsung/handsfreeactivation/StartUp;->doCancel()V
    invoke-static {v1}, Lcom/samsung/handsfreeactivation/StartUp;->access$100(Lcom/samsung/handsfreeactivation/StartUp;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_26

    goto :goto_1f

    .line 104
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_31
    .end packed-switch
.end method
