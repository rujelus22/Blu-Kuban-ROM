.class Lcom/infraware/polarisoffice/ppt/SlideShowActivity$1;
.super Landroid/os/Handler;
.source "SlideShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/ppt/SlideShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/SlideShowActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/ppt/SlideShowActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideShowActivity;

    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 50
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_32

    .line 61
    :goto_6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 62
    return-void

    .line 52
    :pswitch_a
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideShowActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideShowActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v1}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->access$0(Lcom/infraware/polarisoffice/ppt/SlideShowActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    .line 55
    .local v0, info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    iget v1, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nCurPage:I

    iget v2, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    if-lt v1, v2, :cond_27

    .line 56
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideShowActivity;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->onBackPressed()V

    goto :goto_6

    .line 58
    :cond_27
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideShowActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v1}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->access$0(Lcom/infraware/polarisoffice/ppt/SlideShowActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IMovePage(II)V

    goto :goto_6

    .line 50
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method
