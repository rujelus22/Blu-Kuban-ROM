.class Lcom/android/task/TaskSelectListView$1;
.super Ljava/lang/Object;
.source "TaskSelectListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskSelectListView;->setupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskSelectListView;


# direct methods
.method constructor <init>(Lcom/android/task/TaskSelectListView;)V
    .registers 2
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/task/TaskSelectListView$1;->this$0:Lcom/android/task/TaskSelectListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 192
    const-string v0, "TaskSelectListView"

    const-string v1, "======== selectAllView onClick ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/task/TaskSelectListView$1;->this$0:Lcom/android/task/TaskSelectListView;

    #calls: Lcom/android/task/TaskSelectListView;->setSelectAllCheck()V
    invoke-static {v0}, Lcom/android/task/TaskSelectListView;->access$000(Lcom/android/task/TaskSelectListView;)V

    .line 194
    return-void
.end method
