.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$2;
.super Landroid/os/Handler;
.source "PhotoRetouching.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$2;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 621
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 624
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_48

    .line 638
    :goto_6
    return-void

    .line 626
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$2;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 627
    .local v0, c:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$2;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$2;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v5, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$12(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/app/Dialog;)V

    .line 628
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$2;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v2, 0xc003

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto :goto_6

    .line 632
    .end local v0           #c:Ljava/lang/CharSequence;
    :pswitch_27
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$2;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v2, -0x1

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 633
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$2;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$2;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$14(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->closeDialog(Landroid/app/Dialog;)V

    .line 634
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$2;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v1, p1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->endProgress(Landroid/os/Message;)V

    .line 635
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$2;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->inst:Landroid/app/Instrumentation;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$15(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    goto :goto_6

    .line 624
    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_7
        :pswitch_27
    .end packed-switch
.end method
