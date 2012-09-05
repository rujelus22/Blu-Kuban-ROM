.class Lcom/infraware/polarisoffice/viewer/BookClipActivity$2;
.super Landroid/os/Handler;
.source "BookClipActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/viewer/BookClipActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$2;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/16 v5, 0x64

    .line 119
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 120
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "LIST_RIGHT_BTN"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 123
    .local v0, bRightBtn:Z
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$2;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #getter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mbClick:Z
    invoke-static {v2}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$0(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 125
    if-eqz v0, :cond_3b

    .line 127
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$2;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    const-string v3, "BUTTON_POS"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mBtnPos:I
    invoke-static {v2, v3}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$3(Lcom/infraware/polarisoffice/viewer/BookClipActivity;I)V

    .line 128
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$2;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #getter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mBtnPos:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$4(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)I

    move-result v2

    if-ltz v2, :cond_3b

    .line 130
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$2;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    const/4 v3, 0x1

    #setter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mbClick:Z
    invoke-static {v2, v3}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$1(Lcom/infraware/polarisoffice/viewer/BookClipActivity;Z)V

    .line 131
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$2;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    invoke-virtual {v2, v5}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->removeDialog(I)V

    .line 132
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$2;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    invoke-virtual {v2, v5}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->showDialog(I)V

    .line 136
    :cond_3b
    return-void
.end method
