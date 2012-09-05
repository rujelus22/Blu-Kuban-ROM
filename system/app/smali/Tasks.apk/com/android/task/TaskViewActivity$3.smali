.class Lcom/android/task/TaskViewActivity$3;
.super Ljava/lang/Object;
.source "TaskViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskViewActivity;->setCompleteTitleView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskViewActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/task/TaskViewActivity$3;->this$0:Lcom/android/task/TaskViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/task/TaskViewActivity$3;->this$0:Lcom/android/task/TaskViewActivity;

    #getter for: Lcom/android/task/TaskViewActivity;->mCompleteCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/task/TaskViewActivity;->access$100(Lcom/android/task/TaskViewActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v0, 0x1

    .line 514
    .local v0, checked:Z
    :goto_d
    iget-object v1, p0, Lcom/android/task/TaskViewActivity$3;->this$0:Lcom/android/task/TaskViewActivity;

    #getter for: Lcom/android/task/TaskViewActivity;->mCompleteCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/task/TaskViewActivity;->access$100(Lcom/android/task/TaskViewActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 515
    return-void

    .line 513
    .end local v0           #checked:Z
    :cond_17
    const/4 v0, 0x0

    goto :goto_d
.end method
