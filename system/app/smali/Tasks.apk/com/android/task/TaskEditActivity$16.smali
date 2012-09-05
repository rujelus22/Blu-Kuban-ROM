.class Lcom/android/task/TaskEditActivity$16;
.super Ljava/lang/Object;
.source "TaskEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskEditActivity;->dialogPrioritySelectOption()V
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
    .line 1350
    iput-object p1, p0, Lcom/android/task/TaskEditActivity$16;->this$0:Lcom/android/task/TaskEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$16;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity$16;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mPriority_items:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$2600(Lcom/android/task/TaskEditActivity;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p2

    #setter for: Lcom/android/task/TaskEditActivity;->mPriority:I
    invoke-static {v0, v1}, Lcom/android/task/TaskEditActivity;->access$2502(Lcom/android/task/TaskEditActivity;I)I

    .line 1353
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$16;->this$0:Lcom/android/task/TaskEditActivity;

    #calls: Lcom/android/task/TaskEditActivity;->setPriorityView()V
    invoke-static {v0}, Lcom/android/task/TaskEditActivity;->access$2700(Lcom/android/task/TaskEditActivity;)V

    .line 1355
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1356
    return-void
.end method
