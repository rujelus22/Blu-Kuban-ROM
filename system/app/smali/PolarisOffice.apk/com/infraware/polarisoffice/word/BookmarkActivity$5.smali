.class Lcom/infraware/polarisoffice/word/BookmarkActivity$5;
.super Ljava/lang/Object;
.source "BookmarkActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/word/BookmarkActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/word/BookmarkActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$5;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    .line 217
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
    .line 219
    .local p1, a:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$5;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$5;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBookmarkEdit:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$11(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/office/util/EvUtil;->hideIme(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 220
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$5;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/MultiListItem;

    .line 221
    .local v1, item:Lcom/infraware/polarisoffice/common/MultiListItem;
    const-string v2, "BookmarkActivity"

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

    .line 222
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$5;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 223
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "BOOKMARKMODE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string v2, "BOOKMAKRNAME"

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/MultiListItem;->getText1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$5;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->setResult(ILandroid/content/Intent;)V

    .line 226
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$5;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->finish()V

    .line 227
    return-void
.end method
