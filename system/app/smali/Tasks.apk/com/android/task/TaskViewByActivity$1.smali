.class Lcom/android/task/TaskViewByActivity$1;
.super Ljava/lang/Object;
.source "TaskViewByActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskViewByActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskViewByActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskViewByActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/task/TaskViewByActivity$1;->this$0:Lcom/android/task/TaskViewByActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/task/TaskViewByActivity$1;->this$0:Lcom/android/task/TaskViewByActivity;

    #getter for: Lcom/android/task/TaskViewByActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/task/TaskViewByActivity;->access$000(Lcom/android/task/TaskViewByActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v0, 0x1

    .line 81
    .local v0, isChecked:Z
    :goto_d
    iget-object v1, p0, Lcom/android/task/TaskViewByActivity$1;->this$0:Lcom/android/task/TaskViewByActivity;

    #getter for: Lcom/android/task/TaskViewByActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/task/TaskViewByActivity;->access$000(Lcom/android/task/TaskViewByActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    iget-object v1, p0, Lcom/android/task/TaskViewByActivity$1;->this$0:Lcom/android/task/TaskViewByActivity;

    invoke-virtual {v1, v0}, Lcom/android/task/TaskViewByActivity;->setAllItemChecked(Z)V

    .line 83
    return-void

    .line 80
    .end local v0           #isChecked:Z
    :cond_1c
    const/4 v0, 0x0

    goto :goto_d
.end method
