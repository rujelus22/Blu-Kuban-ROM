.class Lcom/samsung/wimax/napid/NAPIDActivity$7;
.super Ljava/lang/Object;
.source "NAPIDActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/NAPIDActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/NAPIDActivity;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/NAPIDActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 838
    iput-object p1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$7;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "arg0"

    .prologue
    .line 840
    const-string v2, "WIMAX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/wimax/napid/NAPIDActivity$7;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v4, v4, Lcom/samsung/wimax/napid/NAPIDActivity;->prtIdText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity$7;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v2, v2, Lcom/samsung/wimax/napid/NAPIDActivity;->prtIdText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 842
    .local v1, prt:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_89

    .line 844
    :cond_58
    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity$7;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    const/16 v3, 0x13

    iput v3, v2, Lcom/samsung/wimax/napid/NAPIDActivity;->type:I

    .line 845
    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity$7;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    #getter for: Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/wimax/napid/NAPIDActivity;->access$800(Lcom/samsung/wimax/napid/NAPIDActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 846
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 847
    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity$7;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    #getter for: Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/wimax/napid/NAPIDActivity;->access$800(Lcom/samsung/wimax/napid/NAPIDActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 848
    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity$7;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v2, v2, Lcom/samsung/wimax/napid/NAPIDActivity;->prtIdText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 849
    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity$7;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/wimax/napid/NAPIDActivity;->dismissDialog(I)V

    .line 858
    .end local v0           #msg:Landroid/os/Message;
    :goto_88
    return-void

    .line 854
    :cond_89
    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity$7;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v2, v2, Lcom/samsung/wimax/napid/NAPIDActivity;->prtIdText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity$7;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/samsung/wimax/napid/NAPIDActivity;->showDialog(I)V

    goto :goto_88
.end method
