.class Lcom/android/task/TaskMainListView$2;
.super Ljava/lang/Object;
.source "TaskMainListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 102
    iput-object p1, p0, Lcom/android/task/TaskMainListView$2;->this$0:Lcom/android/task/TaskMainListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_22

    .line 107
    iget-object v2, p0, Lcom/android/task/TaskMainListView$2;->this$0:Lcom/android/task/TaskMainListView;

    iget-object v2, v2, Lcom/android/task/TaskMainListView;->mCreateButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    .line 108
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/task/TaskMainListView$2;->this$0:Lcom/android/task/TaskMainListView;

    iget-object v2, v2, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/task/TaskEditActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    iget-object v2, p0, Lcom/android/task/TaskMainListView$2;->this$0:Lcom/android/task/TaskMainListView;

    iget-object v2, v2, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    :goto_21
    return v0

    :cond_22
    move v0, v1

    goto :goto_21
.end method
