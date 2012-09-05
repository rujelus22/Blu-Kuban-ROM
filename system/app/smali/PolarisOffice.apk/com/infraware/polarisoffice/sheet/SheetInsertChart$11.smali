.class Lcom/infraware/polarisoffice/sheet/SheetInsertChart$11;
.super Ljava/lang/Object;
.source "SheetInsertChart.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$11;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$11;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreTitle:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$17(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 344
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$11;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$19(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$11;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreTitle:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$17(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 345
    :cond_20
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$11;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreXaxis:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$5(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 346
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$11;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$19(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$11;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreXaxis:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$5(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 347
    :cond_3f
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$11;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreYaxis:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$6(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 348
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$11;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$19(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$11;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreYaxis:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$6(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 349
    :cond_5e
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$11;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->finish()V

    .line 350
    return-void
.end method
