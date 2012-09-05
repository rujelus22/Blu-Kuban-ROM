.class Lcom/infraware/polarisoffice/sheet/SheetViewList$5;
.super Ljava/lang/Object;
.source "SheetViewList.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/sheet/SheetViewList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$5;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 288
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 287
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

    .line 281
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$5;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$2(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, fileName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$5;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    invoke-virtual {v1, v0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->isExistFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 283
    :cond_1d
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$5;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$3(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 286
    :goto_2b
    return-void

    .line 285
    :cond_2c
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$5;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$3(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2b
.end method
