.class Lcom/android/task/TaskMainListView$4;
.super Ljava/lang/Object;
.source "TaskMainListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 149
    iput-object p1, p0, Lcom/android/task/TaskMainListView$4;->this$0:Lcom/android/task/TaskMainListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/task/TaskMainListView$4;->this$0:Lcom/android/task/TaskMainListView;

    iget-object v0, v0, Lcom/android/task/TaskMainListView;->mCreateButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    .line 153
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/task/TaskMainListView$4;->this$0:Lcom/android/task/TaskMainListView;

    iget-object v1, v1, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/task/TaskEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    iget-object v1, p0, Lcom/android/task/TaskMainListView$4;->this$0:Lcom/android/task/TaskMainListView;

    iget-object v1, v1, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 155
    return-void
.end method
