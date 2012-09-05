.class Lcom/android/task/TaskImportListActivity$3;
.super Ljava/lang/Object;
.source "TaskImportListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskImportListActivity;->setupSoftkey()V
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
    .line 131
    iput-object p1, p0, Lcom/android/task/TaskImportListActivity$3;->this$0:Lcom/android/task/TaskImportListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity$3;->this$0:Lcom/android/task/TaskImportListActivity;

    invoke-virtual {v0}, Lcom/android/task/TaskImportListActivity;->finish()V

    .line 134
    return-void
.end method
