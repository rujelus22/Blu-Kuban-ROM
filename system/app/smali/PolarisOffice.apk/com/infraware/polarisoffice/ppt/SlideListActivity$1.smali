.class Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;
.super Landroid/os/Handler;
.source "SlideListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/ppt/SlideListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/16 v3, 0xb5

    const/16 v2, 0x7e

    const/16 v4, 0x11

    .line 63
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_72

    .line 96
    :cond_b
    :goto_b
    :sswitch_b
    return-void

    .line 67
    :sswitch_c
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getHaveToDrawingPageCountInViewRect()I

    move-result v0

    .line 68
    .local v0, pageCount:I
    if-lez v0, :cond_1e

    .line 69
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v1}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$0(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    invoke-virtual {v1, v3, v2, v0}, Lcom/infraware/office/evengine/EvInterface;->ISlideObjStartEx(III)V

    goto :goto_b

    .line 70
    :cond_1e
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    iget-boolean v1, v1, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mbDrawAllThumbnail:Z

    if-nez v1, :cond_b

    .line 71
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 72
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    iget v2, v2, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mDelay:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    .line 77
    .end local v0           #pageCount:I
    :sswitch_38
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getHaveToDrawingPageCountInViewRect()I

    move-result v0

    .line 78
    .restart local v0       #pageCount:I
    if-nez v0, :cond_46

    .line 79
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getHaveToDrawingPageCount()I

    move-result v0

    .line 81
    :cond_46
    if-lez v0, :cond_6c

    .line 82
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    iget v1, v1, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mListScrollState:I

    if-nez v1, :cond_58

    .line 83
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v1}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$0(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    invoke-virtual {v1, v3, v2, v0}, Lcom/infraware/office/evengine/EvInterface;->ISlideObjStartEx(III)V

    goto :goto_b

    .line 85
    :cond_58
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    iget v2, v2, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mDelay:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    .line 90
    :cond_6c
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mbDrawAllThumbnail:Z

    goto :goto_b

    .line 63
    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_b
        0x10 -> :sswitch_c
        0x11 -> :sswitch_38
    .end sparse-switch
.end method
