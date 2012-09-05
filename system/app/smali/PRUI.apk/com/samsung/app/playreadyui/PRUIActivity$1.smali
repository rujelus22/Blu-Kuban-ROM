.class Lcom/samsung/app/playreadyui/PRUIActivity$1;
.super Landroid/os/Handler;
.source "PRUIActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/playreadyui/PRUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/app/playreadyui/PRUIActivity;


# direct methods
.method constructor <init>(Lcom/samsung/app/playreadyui/PRUIActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 89
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$000(Lcom/samsung/app/playreadyui/PRUIActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$000(Lcom/samsung/app/playreadyui/PRUIActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 93
    const-string v0, "PRUIActivity::Message handler:"

    const-string v1, "Dismissing progress dialog..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$000(Lcom/samsung/app/playreadyui/PRUIActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 98
    :cond_2a
    const-string v0, "PRUIActivity::Message handler:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiator["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v2

    iget v2, v2, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mInitiatorType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v2

    iget v2, v2, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v0

    iget v0, v0, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mInitiatorType:I

    packed-switch v0, :pswitch_data_184

    .line 175
    :goto_73
    return-void

    .line 104
    :pswitch_74
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v0

    iget v0, v0, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mErrorCode:I

    if-ne v0, v3, :cond_8d

    .line 106
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mURL:Ljava/lang/String;

    #calls: Lcom/samsung/app/playreadyui/PRUIActivity;->createErrorDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$200(Lcom/samsung/app/playreadyui/PRUIActivity;ILjava/lang/String;)V

    goto :goto_73

    .line 108
    :cond_8d
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v0

    iget v0, v0, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mErrorCode:I

    if-ne v0, v4, :cond_a6

    .line 110
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mURL:Ljava/lang/String;

    #calls: Lcom/samsung/app/playreadyui/PRUIActivity;->createErrorDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$200(Lcom/samsung/app/playreadyui/PRUIActivity;ILjava/lang/String;)V

    goto :goto_73

    .line 114
    :cond_a6
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    iget-object v1, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v1}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v1

    iget v1, v1, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mErrorCode:I

    iget-object v2, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mURL:Ljava/lang/String;

    #calls: Lcom/samsung/app/playreadyui/PRUIActivity;->createErrorDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$200(Lcom/samsung/app/playreadyui/PRUIActivity;ILjava/lang/String;)V

    goto :goto_73

    .line 121
    :pswitch_bc
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v0

    iget v0, v0, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mErrorCode:I

    if-ne v0, v3, :cond_cd

    .line 123
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    const/4 v1, -0x3

    #calls: Lcom/samsung/app/playreadyui/PRUIActivity;->createErrorDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v5}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$200(Lcom/samsung/app/playreadyui/PRUIActivity;ILjava/lang/String;)V

    goto :goto_73

    .line 125
    :cond_cd
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v0

    iget v0, v0, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mErrorCode:I

    if-ne v0, v4, :cond_e6

    .line 127
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    const/4 v1, -0x4

    iget-object v2, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mURL:Ljava/lang/String;

    #calls: Lcom/samsung/app/playreadyui/PRUIActivity;->createErrorDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$200(Lcom/samsung/app/playreadyui/PRUIActivity;ILjava/lang/String;)V

    goto :goto_73

    .line 131
    :cond_e6
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    iget-object v1, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v1}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v1

    iget v1, v1, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mErrorCode:I

    iget-object v2, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mURL:Ljava/lang/String;

    #calls: Lcom/samsung/app/playreadyui/PRUIActivity;->createErrorDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$200(Lcom/samsung/app/playreadyui/PRUIActivity;ILjava/lang/String;)V

    goto/16 :goto_73

    .line 138
    :pswitch_fd
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v0

    iget v0, v0, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mErrorCode:I

    if-ne v0, v3, :cond_10f

    .line 140
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    const/4 v1, -0x5

    #calls: Lcom/samsung/app/playreadyui/PRUIActivity;->createErrorDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v5}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$200(Lcom/samsung/app/playreadyui/PRUIActivity;ILjava/lang/String;)V

    goto/16 :goto_73

    .line 142
    :cond_10f
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v0

    iget v0, v0, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mErrorCode:I

    if-ne v0, v4, :cond_129

    .line 144
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    const/4 v1, -0x6

    iget-object v2, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mURL:Ljava/lang/String;

    #calls: Lcom/samsung/app/playreadyui/PRUIActivity;->createErrorDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$200(Lcom/samsung/app/playreadyui/PRUIActivity;ILjava/lang/String;)V

    goto/16 :goto_73

    .line 148
    :cond_129
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    iget-object v1, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v1}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v1

    iget v1, v1, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mErrorCode:I

    iget-object v2, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mURL:Ljava/lang/String;

    #calls: Lcom/samsung/app/playreadyui/PRUIActivity;->createErrorDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$200(Lcom/samsung/app/playreadyui/PRUIActivity;ILjava/lang/String;)V

    goto/16 :goto_73

    .line 155
    :pswitch_140
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v0

    iget v0, v0, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mErrorCode:I

    if-ne v0, v3, :cond_152

    .line 157
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    const/4 v1, -0x7

    #calls: Lcom/samsung/app/playreadyui/PRUIActivity;->createErrorDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v5}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$200(Lcom/samsung/app/playreadyui/PRUIActivity;ILjava/lang/String;)V

    goto/16 :goto_73

    .line 159
    :cond_152
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v0

    iget v0, v0, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mErrorCode:I

    if-ne v0, v4, :cond_16c

    .line 161
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    const/4 v1, -0x8

    iget-object v2, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mURL:Ljava/lang/String;

    #calls: Lcom/samsung/app/playreadyui/PRUIActivity;->createErrorDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$200(Lcom/samsung/app/playreadyui/PRUIActivity;ILjava/lang/String;)V

    goto/16 :goto_73

    .line 165
    :cond_16c
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    iget-object v1, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v1}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v1

    iget v1, v1, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mErrorCode:I

    iget-object v2, p0, Lcom/samsung/app/playreadyui/PRUIActivity$1;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mURL:Ljava/lang/String;

    #calls: Lcom/samsung/app/playreadyui/PRUIActivity;->createErrorDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$200(Lcom/samsung/app/playreadyui/PRUIActivity;ILjava/lang/String;)V

    goto/16 :goto_73

    .line 100
    nop

    :pswitch_data_184
    .packed-switch 0x18
        :pswitch_bc
        :pswitch_fd
        :pswitch_74
        :pswitch_140
    .end packed-switch
.end method
