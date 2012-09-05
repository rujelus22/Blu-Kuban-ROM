.class Lcom/android/task/TaskImportListActivity$1;
.super Ljava/lang/Object;
.source "TaskImportListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskImportListActivity;->setupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskImportListActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskImportListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/task/TaskImportListActivity$1;->this$0:Lcom/android/task/TaskImportListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 106
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 107
    const-string v2, "VCAL_DATA"

    iget-object v0, p0, Lcom/android/task/TaskImportListActivity$1;->this$0:Lcom/android/task/TaskImportListActivity;

    #getter for: Lcom/android/task/TaskImportListActivity;->mContentValues:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/task/TaskImportListActivity;->access$000(Lcom/android/task/TaskImportListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 108
    const-string v0, "VCAL_POSITION"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity$1;->this$0:Lcom/android/task/TaskImportListActivity;

    const-class v2, Lcom/android/task/TaskImportViewActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const/high16 v0, 0x2002

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity$1;->this$0:Lcom/android/task/TaskImportListActivity;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/android/task/TaskImportListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    return-void
.end method
