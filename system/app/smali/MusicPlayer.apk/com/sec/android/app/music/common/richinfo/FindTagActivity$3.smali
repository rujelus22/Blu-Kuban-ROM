.class Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;
.super Landroid/os/Handler;
.source "FindTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/FindTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const v2, 0x7f090087

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, message:Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_a8

    .line 239
    :goto_9
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$900(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$900(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$900(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$900(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 243
    :cond_32
    return-void

    .line 204
    :pswitch_33
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$200(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #calls: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->requestConfig()V
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$300(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V

    goto :goto_9

    .line 214
    :pswitch_46
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$200(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sigdata"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    #calls: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->doRecognition([B)V
    invoke-static {v1, v2}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$400(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;[B)V

    goto :goto_9

    .line 218
    :pswitch_60
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #calls: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->hideProgressDialog()V
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$500(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->setResult(I)V

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->finish()V

    goto :goto_9

    .line 226
    :pswitch_71
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$200(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "requestId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->requestResults(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$600(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 230
    :pswitch_8c
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$200(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09008a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #calls: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->internalRecording()V
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$700(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V

    goto/16 :goto_9

    .line 234
    :pswitch_a0
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #calls: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->displayFindTagResults()V
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$800(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V

    goto/16 :goto_9

    .line 202
    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_33
        :pswitch_46
        :pswitch_60
        :pswitch_71
        :pswitch_a0
        :pswitch_8c
    .end packed-switch
.end method
