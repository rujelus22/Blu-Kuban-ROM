.class Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$2;
.super Landroid/os/Handler;
.source "EvTextToSpeechHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$2;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    .line 675
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    const/16 v1, 0x80

    .line 678
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$2;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-boolean v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_bScreenTimeOutDisable:Z

    if-nez v0, :cond_9

    .line 695
    :goto_8
    return-void

    .line 681
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    .line 694
    :cond_e
    :goto_e
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_8

    .line 683
    :pswitch_12
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$2;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    if-eqz v0, :cond_e

    .line 684
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$2;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_e

    .line 689
    :pswitch_24
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$2;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    if-eqz v0, :cond_e

    .line 690
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$2;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_e

    .line 681
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_12
        :pswitch_24
    .end packed-switch
.end method
