.class Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$2;
.super Ljava/lang/Object;
.source "SheetInsertFunction.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "view"
    .parameter "position"
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
    .line 85
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->matches:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->access$1(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    .local v3, strTitle:Ljava/lang/String;
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->matches:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->access$1(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    const-string v5, "definition"

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    .local v2, strDef:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "result"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, result:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "functionTitle"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v4, "functionDef"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 92
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->setResult(ILandroid/content/Intent;)V

    .line 93
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->finish()V

    .line 94
    return-void
.end method
