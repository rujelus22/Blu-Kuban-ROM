.class Lcom/android/task/TaskMainListView$3;
.super Ljava/lang/Object;
.source "TaskMainListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskMainListView;->setupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskMainListView;


# direct methods
.method constructor <init>(Lcom/android/task/TaskMainListView;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/task/TaskMainListView$3;->this$0:Lcom/android/task/TaskMainListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 121
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_11

    iget-object v0, p0, Lcom/android/task/TaskMainListView$3;->this$0:Lcom/android/task/TaskMainListView;

    iget-object v0, v0, Lcom/android/task/TaskMainListView;->mCreateButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    .line 122
    iget-object v0, p0, Lcom/android/task/TaskMainListView$3;->this$0:Lcom/android/task/TaskMainListView;

    iget-object v0, v0, Lcom/android/task/TaskMainListView;->mCreateButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 129
    :cond_10
    :goto_10
    return-void

    .line 124
    :cond_11
    iget-object v0, p0, Lcom/android/task/TaskMainListView$3;->this$0:Lcom/android/task/TaskMainListView;

    iget-object v0, v0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/task/TaskMainListView$3;->this$0:Lcom/android/task/TaskMainListView;

    iget-object v0, v0, Lcom/android/task/TaskMainListView;->mCreateButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    .line 125
    iget-object v0, p0, Lcom/android/task/TaskMainListView$3;->this$0:Lcom/android/task/TaskMainListView;

    iget-object v0, v0, Lcom/android/task/TaskMainListView;->mCreateButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 126
    iget-object v0, p0, Lcom/android/task/TaskMainListView$3;->this$0:Lcom/android/task/TaskMainListView;

    iget-object v0, v0, Lcom/android/task/TaskMainListView;->mCreateButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearFocus()V

    goto :goto_10
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
