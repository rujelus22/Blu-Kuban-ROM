.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$23;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreateInputListPopup(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$23;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 3331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 3332
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3333
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 3335
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$23;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$23;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getMatches(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->matches:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$32(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/util/ArrayList;)V

    .line 3336
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$23;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->matches:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$33(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 3337
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$23;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3338
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$23;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$23;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->ap2:Landroid/widget/SimpleAdapter;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$34(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3340
    :cond_2c
    return-void
.end method
