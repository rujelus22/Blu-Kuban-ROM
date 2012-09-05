.class Lcom/android/task/TaskDeleteListView$3;
.super Ljava/lang/Object;
.source "TaskDeleteListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskDeleteListView;->createDialog()V
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
    .line 120
    iput-object p1, p0, Lcom/android/task/TaskDeleteListView$3;->this$0:Lcom/android/task/TaskDeleteListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/task/TaskDeleteListView$3;->this$0:Lcom/android/task/TaskDeleteListView;

    #calls: Lcom/android/task/TaskDeleteListView;->deleteTasks()V
    invoke-static {v0}, Lcom/android/task/TaskDeleteListView;->access$300(Lcom/android/task/TaskDeleteListView;)V

    .line 155
    return-void
.end method
