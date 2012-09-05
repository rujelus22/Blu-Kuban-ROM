.class Lcom/android/task/TaskEditActivity$7;
.super Ljava/lang/Object;
.source "TaskEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskEditActivity;->initReminderView()V
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
    .line 629
    iput-object p1, p0, Lcom/android/task/TaskEditActivity$7;->this$0:Lcom/android/task/TaskEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$7;->this$0:Lcom/android/task/TaskEditActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/task/TaskEditActivity;->showDialog(I)V

    .line 633
    return-void
.end method
