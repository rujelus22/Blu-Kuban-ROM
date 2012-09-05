.class Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    .line 640
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v1, 0x2

    const/16 v4, 0x32

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 642
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-boolean v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_bClose:Z

    if-eqz v0, :cond_c

    .line 671
    :cond_b
    :goto_b
    return-void

    .line 645
    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_76

    goto :goto_b

    .line 648
    :pswitch_12
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    if-nez v0, :cond_20

    .line 649
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v4, v2, v2}, Lcom/infraware/office/evengine/EvInterface;->IGetTextToSpeachString(III)V

    goto :goto_b

    .line 651
    :cond_20
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    if-ne v0, v1, :cond_32

    .line 652
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iput v3, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 653
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v4, v1, v2}, Lcom/infraware/office/evengine/EvInterface;->IGetTextToSpeachString(III)V

    goto :goto_b

    .line 655
    :cond_32
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_45

    .line 656
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iput v3, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 657
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v4, v2, v2}, Lcom/infraware/office/evengine/EvInterface;->IGetTextToSpeachString(III)V

    goto :goto_b

    .line 659
    :cond_45
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 660
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iput v3, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 661
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_strReadTTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->speechString(Ljava/lang/String;)V

    goto :goto_b

    .line 666
    :pswitch_5a
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    #getter for: Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPrevBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->access$0(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-boolean v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_bEnablePrevNext:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 667
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    #getter for: Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsNextBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->access$1(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-boolean v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_bEnablePrevNext:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_b

    .line 645
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_12
        :pswitch_5a
    .end packed-switch
.end method
