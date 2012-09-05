.class Lcom/samsung/wimax/napid/Activated$4;
.super Ljava/lang/Object;
.source "Activated.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/Activated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/Activated;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/Activated;)V
    .registers 2
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/samsung/wimax/napid/Activated$4;->this$0:Lcom/samsung/wimax/napid/Activated;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 406
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$4;->this$0:Lcom/samsung/wimax/napid/Activated;

    iget-object v1, v1, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v2, "OK Pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$4;->this$0:Lcom/samsung/wimax/napid/Activated;

    iget-object v1, v1, Lcom/samsung/wimax/napid/Activated;->actText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$4;->this$0:Lcom/samsung/wimax/napid/Activated;

    iget-object v1, v1, Lcom/samsung/wimax/napid/Activated;->actText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_75

    .line 410
    :cond_3a
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$4;->this$0:Lcom/samsung/wimax/napid/Activated;

    const/4 v2, 0x3

    #setter for: Lcom/samsung/wimax/napid/Activated;->type:I
    invoke-static {v1, v2}, Lcom/samsung/wimax/napid/Activated;->access$202(Lcom/samsung/wimax/napid/Activated;I)I

    .line 411
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$4;->this$0:Lcom/samsung/wimax/napid/Activated;

    #getter for: Lcom/samsung/wimax/napid/Activated;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/wimax/napid/Activated;->access$700(Lcom/samsung/wimax/napid/Activated;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 412
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$4;->this$0:Lcom/samsung/wimax/napid/Activated;

    iget-object v1, v1, Lcom/samsung/wimax/napid/Activated;->actText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 413
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$4;->this$0:Lcom/samsung/wimax/napid/Activated;

    #getter for: Lcom/samsung/wimax/napid/Activated;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/wimax/napid/Activated;->access$700(Lcom/samsung/wimax/napid/Activated;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$4;->this$0:Lcom/samsung/wimax/napid/Activated;

    iget-object v1, v1, Lcom/samsung/wimax/napid/Activated;->actText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$4;->this$0:Lcom/samsung/wimax/napid/Activated;

    invoke-virtual {v1, v3}, Lcom/samsung/wimax/napid/Activated;->dismissDialog(I)V

    .line 423
    .end local v0           #msg:Landroid/os/Message;
    :goto_74
    return-void

    .line 419
    :cond_75
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$4;->this$0:Lcom/samsung/wimax/napid/Activated;

    invoke-virtual {v1, v3}, Lcom/samsung/wimax/napid/Activated;->dismissDialog(I)V

    .line 420
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$4;->this$0:Lcom/samsung/wimax/napid/Activated;

    iget-object v1, v1, Lcom/samsung/wimax/napid/Activated;->actText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$4;->this$0:Lcom/samsung/wimax/napid/Activated;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/wimax/napid/Activated;->showDialog(I)V

    goto :goto_74
.end method
