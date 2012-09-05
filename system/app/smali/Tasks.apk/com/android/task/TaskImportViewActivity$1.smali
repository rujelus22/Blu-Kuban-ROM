.class Lcom/android/task/TaskImportViewActivity$1;
.super Ljava/lang/Object;
.source "TaskImportViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskImportViewActivity;->setupSoftkey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskImportViewActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskImportViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/task/TaskImportViewActivity$1;->this$0:Lcom/android/task/TaskImportViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/task/TaskImportViewActivity$1;->this$0:Lcom/android/task/TaskImportViewActivity;

    #calls: Lcom/android/task/TaskImportViewActivity;->importCalendar()V
    invoke-static {v0}, Lcom/android/task/TaskImportViewActivity;->access$000(Lcom/android/task/TaskImportViewActivity;)V

    .line 121
    iget-object v0, p0, Lcom/android/task/TaskImportViewActivity$1;->this$0:Lcom/android/task/TaskImportViewActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/task/TaskImportViewActivity;->setResult(I)V

    .line 122
    iget-object v0, p0, Lcom/android/task/TaskImportViewActivity$1;->this$0:Lcom/android/task/TaskImportViewActivity;

    invoke-virtual {v0}, Lcom/android/task/TaskImportViewActivity;->finish()V

    .line 123
    return-void
.end method
