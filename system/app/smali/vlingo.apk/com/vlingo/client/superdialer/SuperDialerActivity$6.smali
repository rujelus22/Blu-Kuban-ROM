.class Lcom/vlingo/client/superdialer/SuperDialerActivity$6;
.super Ljava/lang/Object;
.source "SuperDialerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/superdialer/SuperDialerActivity;->setupTextChangedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/superdialer/SuperDialerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$6;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 693
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 696
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 11
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 666
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$6;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    iget-boolean v1, v1, Lcom/vlingo/client/superdialer/SuperDialerActivity;->ignoreTextChange:Z

    if-eqz v1, :cond_d

    .line 669
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$6;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    iput-boolean v4, v1, Lcom/vlingo/client/superdialer/SuperDialerActivity;->ignoreTextChange:Z

    .line 690
    :goto_c
    return-void

    .line 673
    :cond_d
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$6;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    const/4 v2, 0x0

    #setter for: Lcom/vlingo/client/superdialer/SuperDialerActivity;->curSpokenLocation:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$902(Lcom/vlingo/client/superdialer/SuperDialerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 675
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$6;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    #getter for: Lcom/vlingo/client/superdialer/SuperDialerActivity;->eventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$400(Lcom/vlingo/client/superdialer/SuperDialerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    if-ne p4, v5, :cond_5f

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5f

    .line 681
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 682
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$6;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    #getter for: Lcom/vlingo/client/superdialer/SuperDialerActivity;->searchBox:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$500(Lcom/vlingo/client/superdialer/SuperDialerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$6;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    #getter for: Lcom/vlingo/client/superdialer/SuperDialerActivity;->searchBox:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$500(Lcom/vlingo/client/superdialer/SuperDialerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 684
    .local v0, etext:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 685
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$6;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    #calls: Lcom/vlingo/client/superdialer/SuperDialerActivity;->hideKeyboard()V
    invoke-static {v1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$1000(Lcom/vlingo/client/superdialer/SuperDialerActivity;)V

    .line 686
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$6;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/vlingo/client/superdialer/SuperDialerActivity;->executeSearch(Ljava/lang/String;ZZ)V
    invoke-static {v1, v2, v4, v5}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$1100(Lcom/vlingo/client/superdialer/SuperDialerActivity;Ljava/lang/String;ZZ)V

    goto :goto_c

    .line 688
    .end local v0           #etext:Landroid/text/Editable;
    :cond_5f
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$6;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    #getter for: Lcom/vlingo/client/superdialer/SuperDialerActivity;->eventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$400(Lcom/vlingo/client/superdialer/SuperDialerActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_c
.end method
