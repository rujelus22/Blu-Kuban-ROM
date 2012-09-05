.class Lcom/samsung/wimax/napid/NAPIDActivity$5;
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
    .line 763
    iput-object p1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$5;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x6

    .line 767
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$5;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v1, v1, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_73

    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$5;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v1, v1, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/wimax/napid/NAPIDActivity;->IsNumericorDigit(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 771
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$5;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v1, v1, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v2, "*********calling write NAPID "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$5;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    const/16 v2, 0x10

    iput v2, v1, Lcom/samsung/wimax/napid/NAPIDActivity;->type:I

    .line 773
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$5;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    #getter for: Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/wimax/napid/NAPIDActivity;->access$800(Lcom/samsung/wimax/napid/NAPIDActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 774
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$5;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v1, v1, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 775
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$5;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    #getter for: Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/wimax/napid/NAPIDActivity;->access$800(Lcom/samsung/wimax/napid/NAPIDActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 776
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$5;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v1, v1, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$5;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/wimax/napid/NAPIDActivity;->dismissDialog(I)V

    .line 785
    .end local v0           #msg:Landroid/os/Message;
    :goto_72
    return-void

    .line 782
    :cond_73
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$5;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v1, v1, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 783
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$5;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    invoke-virtual {v1, v3}, Lcom/samsung/wimax/napid/NAPIDActivity;->showDialog(I)V

    goto :goto_72
.end method
