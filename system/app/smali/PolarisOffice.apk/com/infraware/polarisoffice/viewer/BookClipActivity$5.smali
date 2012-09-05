.class Lcom/infraware/polarisoffice/viewer/BookClipActivity$5;
.super Ljava/lang/Object;
.source "BookClipActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/viewer/BookClipActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$5;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter "v"
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
    .line 170
    .local p1, a:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$5;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/MultiListItem;

    .line 171
    .local v1, item:Lcom/infraware/polarisoffice/common/MultiListItem;
    const-string v2, "BookClipActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "List Click position  = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "String = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/MultiListItem;->getText1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$5;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 173
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "FILEPATH"

    iget-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$5;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #getter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mFilePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$7(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v2, "CLIPNAME"

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/MultiListItem;->getText1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$5;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->setResult(ILandroid/content/Intent;)V

    .line 176
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$5;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->finish()V

    .line 177
    return-void
.end method
