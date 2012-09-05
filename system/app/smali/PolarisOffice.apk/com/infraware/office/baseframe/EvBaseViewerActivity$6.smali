.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$6;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 1833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 1859
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1856
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 12
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1836
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPageNum:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$7(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v2

    const v3, 0x7f0c01df

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1838
    .local v1, gotoString:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_36

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lt v2, v4, :cond_36

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v3, v3, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v3

    iget v3, v3, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    if-le v2, v3, :cond_9e

    .line 1840
    :cond_36
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$8(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1842
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9d

    .line 1844
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPageNum:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$7(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v3, v3, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v3

    iget v3, v3, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1845
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPageNum:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$7(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPageNum:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$7(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 1846
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1847
    .local v0, formattedString:Ljava/lang/String;
    if-eqz v0, :cond_9d

    .line 1848
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v4, v4, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v4

    iget v4, v4, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onToastMessage(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$9(Lcom/infraware/office/baseframe/EvBaseViewerActivity;Ljava/lang/String;)V

    .line 1853
    .end local v0           #formattedString:Ljava/lang/String;
    :cond_9d
    :goto_9d
    return-void

    .line 1852
    :cond_9e
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$6;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$8(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_9d
.end method
