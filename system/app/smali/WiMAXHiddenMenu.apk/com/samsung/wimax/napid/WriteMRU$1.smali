.class Lcom/samsung/wimax/napid/WriteMRU$1;
.super Ljava/lang/Object;
.source "WriteMRU.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wimax/napid/WriteMRU;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/WriteMRU;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/WriteMRU;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/wimax/napid/WriteMRU$1;->this$0:Lcom/samsung/wimax/napid/WriteMRU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, -0x1

    .line 106
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU$1;->this$0:Lcom/samsung/wimax/napid/WriteMRU;

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    const-string v1, "Write MRU onItemSelected -------1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU$1;->this$0:Lcom/samsung/wimax/napid/WriteMRU;

    iget-boolean v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->selectionString:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    .line 109
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU$1;->this$0:Lcom/samsung/wimax/napid/WriteMRU;

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->cf1:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/wimax/napid/WriteMRU$1;->this$0:Lcom/samsung/wimax/napid/WriteMRU;

    iget-object v1, v1, Lcom/samsung/wimax/napid/WriteMRU;->cf1Adapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU$1;->this$0:Lcom/samsung/wimax/napid/WriteMRU;

    invoke-virtual {v2}, Lcom/samsung/wimax/napid/WriteMRU;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CH1"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 110
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU$1;->this$0:Lcom/samsung/wimax/napid/WriteMRU;

    iget-object v1, p0, Lcom/samsung/wimax/napid/WriteMRU$1;->this$0:Lcom/samsung/wimax/napid/WriteMRU;

    invoke-virtual {v1}, Lcom/samsung/wimax/napid/WriteMRU;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CH1"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/samsung/wimax/napid/WriteMRU;->handleItemClickInCh1Spinner(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU;->access$000(Lcom/samsung/wimax/napid/WriteMRU;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU$1;->this$0:Lcom/samsung/wimax/napid/WriteMRU;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/wimax/napid/WriteMRU;->selectionString:Z

    .line 117
    :goto_4a
    return-void

    .line 115
    :cond_4b
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU$1;->this$0:Lcom/samsung/wimax/napid/WriteMRU;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/samsung/wimax/napid/WriteMRU;->handleItemClickInCh1Spinner(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU;->access$000(Lcom/samsung/wimax/napid/WriteMRU;Ljava/lang/String;)V

    goto :goto_4a
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU$1;->this$0:Lcom/samsung/wimax/napid/WriteMRU;

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    const-string v1, "Write MRU onNothingSelected -------1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method
