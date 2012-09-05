.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$11;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onWritePasswordDoc(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

.field private final synthetic val$etPassword:Landroid/widget/EditText;

.field private final synthetic val$strPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;Landroid/widget/EditText;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$11;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iput-object p2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$11;->val$etPassword:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$11;->val$strPassword:Ljava/lang/String;

    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 852
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 853
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v2, -0x1

    .line 855
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$11;->val$etPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$11;->val$strPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_22

    .line 857
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$11;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oPasswordPopup:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$14(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 860
    :goto_21
    return-void

    .line 859
    :cond_22
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$11;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oPasswordPopup:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$14(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_21
.end method
