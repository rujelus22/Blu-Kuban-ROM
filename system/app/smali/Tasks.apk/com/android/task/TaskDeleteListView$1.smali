.class Lcom/android/task/TaskDeleteListView$1;
.super Ljava/lang/Object;
.source "TaskDeleteListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskDeleteListView;->setupSoftkey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskDeleteListView;


# direct methods
.method constructor <init>(Lcom/android/task/TaskDeleteListView;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/task/TaskDeleteListView$1;->this$0:Lcom/android/task/TaskDeleteListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/task/TaskDeleteListView$1;->this$0:Lcom/android/task/TaskDeleteListView;

    #calls: Lcom/android/task/TaskDeleteListView;->createDialog()V
    invoke-static {v0}, Lcom/android/task/TaskDeleteListView;->access$000(Lcom/android/task/TaskDeleteListView;)V

    .line 50
    invoke-static {}, Lcom/android/task/TaskDeleteListView;->access$100()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/task/TaskDeleteListView;->access$202(Z)Z

    .line 54
    return-void
.end method
