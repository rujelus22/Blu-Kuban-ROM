.class Lcom/android/task/TaskEditActivity$10;
.super Ljava/lang/Object;
.source "TaskEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskEditActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskEditActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/task/TaskEditActivity$10;->this$0:Lcom/android/task/TaskEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$10;->this$0:Lcom/android/task/TaskEditActivity;

    #calls: Lcom/android/task/TaskEditActivity;->hideSoftInput()V
    invoke-static {v0}, Lcom/android/task/TaskEditActivity;->access$900(Lcom/android/task/TaskEditActivity;)V

    .line 731
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$10;->this$0:Lcom/android/task/TaskEditActivity;

    invoke-virtual {v0}, Lcom/android/task/TaskEditActivity;->finish()V

    .line 732
    return-void
.end method
