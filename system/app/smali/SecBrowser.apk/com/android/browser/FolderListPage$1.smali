.class Lcom/android/browser/FolderListPage$1;
.super Ljava/lang/Object;
.source "FolderListPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/FolderListPage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/FolderListPage;


# direct methods
.method constructor <init>(Lcom/android/browser/FolderListPage;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/browser/FolderListPage$1;->this$0:Lcom/android/browser/FolderListPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
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
    .line 119
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v0, mMap:Landroid/os/Bundle;
    const-string v2, "title"

    move-object v1, p2

    check-cast v1, Lcom/android/browser/FolderItem;

    invoke-virtual {v1}, Lcom/android/browser/FolderItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "parent"

    check-cast p2, Lcom/android/browser/FolderItem;

    .end local p2
    invoke-virtual {p2}, Lcom/android/browser/FolderItem;->getFolder()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    iget-object v1, p0, Lcom/android/browser/FolderListPage$1;->this$0:Lcom/android/browser/FolderListPage;

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/browser/FolderListPage$1;->this$0:Lcom/android/browser/FolderListPage;

    invoke-virtual {v4}, Lcom/android/browser/FolderListPage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/FolderListPage;->setResult(ILandroid/content/Intent;)V

    .line 125
    iget-object v1, p0, Lcom/android/browser/FolderListPage$1;->this$0:Lcom/android/browser/FolderListPage;

    invoke-virtual {v1}, Lcom/android/browser/FolderListPage;->finish()V

    .line 126
    return-void
.end method
