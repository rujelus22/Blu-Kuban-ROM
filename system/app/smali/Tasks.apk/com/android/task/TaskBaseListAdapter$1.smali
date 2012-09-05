.class Lcom/android/task/TaskBaseListAdapter$1;
.super Ljava/lang/Object;
.source "TaskBaseListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskBaseListAdapter;->setCompleteCheckBox(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskBaseListAdapter;

.field final synthetic val$taskID:J


# direct methods
.method constructor <init>(Lcom/android/task/TaskBaseListAdapter;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/task/TaskBaseListAdapter$1;->this$0:Lcom/android/task/TaskBaseListAdapter;

    iput-wide p2, p0, Lcom/android/task/TaskBaseListAdapter$1;->val$taskID:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 642
    const-string v0, "SANDEEP"

    const-string v1, "on Check changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v0, "TaskBaseListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache.checkBox - onCheckedChanged, isChecked= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 645
    iget-object v0, p0, Lcom/android/task/TaskBaseListAdapter$1;->this$0:Lcom/android/task/TaskBaseListAdapter;

    iget-wide v1, p0, Lcom/android/task/TaskBaseListAdapter$1;->val$taskID:J

    #calls: Lcom/android/task/TaskBaseListAdapter;->saveCompleteState(ZJ)V
    invoke-static {v0, p2, v1, v2}, Lcom/android/task/TaskBaseListAdapter;->access$000(Lcom/android/task/TaskBaseListAdapter;ZJ)V

    .line 646
    return-void
.end method
