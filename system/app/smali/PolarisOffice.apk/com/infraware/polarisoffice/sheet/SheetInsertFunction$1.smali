.class Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$1;
.super Ljava/lang/Object;
.source "SheetInsertFunction.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 50
    const-string v0, "SheetInsertFunction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTextChanged s="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 53
    const-string v0, "SheetInsertFunction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "beforeTextChanged s="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 56
    const-string v0, "SheetInsertFunction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "afterTextChanged s="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->getMatches(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->matches:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->access$0(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;Ljava/util/ArrayList;)V

    .line 59
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->matches:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->access$1(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 61
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_viewEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->access$2(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->matches:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->access$1(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 70
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->lv:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->access$3(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->lv:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->access$3(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->ap2:Landroid/widget/SimpleAdapter;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->access$4(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    :cond_5a
    return-void

    .line 65
    :cond_5b
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_viewEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->access$2(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 66
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_viewEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->access$2(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_39
.end method
