.class final Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;
.super Ljava/lang/Object;
.source "TaskBaseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskBaseListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskListItemCache"
.end annotation


# instance fields
.field public accountColorBar:Landroid/view/View;

.field public checkBox:Landroid/widget/CheckBox;

.field public dDay:Landroid/widget/TextView;

.field public dueDate:Landroid/widget/TextView;

.field public priority:Landroid/widget/ImageView;

.field public reminder:Landroid/widget/ImageView;

.field public reminderDdayContainer:Landroid/view/View;

.field public subject:Landroid/widget/TextView;

.field public taskListCompleteImage:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->accountColorBar:Landroid/view/View;

    .line 53
    iput-object v0, p0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->subject:Landroid/widget/TextView;

    .line 54
    iput-object v0, p0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->dueDate:Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->checkBox:Landroid/widget/CheckBox;

    .line 56
    iput-object v0, p0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->taskListCompleteImage:Landroid/view/View;

    .line 57
    iput-object v0, p0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->reminderDdayContainer:Landroid/view/View;

    .line 59
    iput-object v0, p0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->reminder:Landroid/widget/ImageView;

    .line 60
    iput-object v0, p0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->priority:Landroid/widget/ImageView;

    .line 61
    iput-object v0, p0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->dDay:Landroid/widget/TextView;

    return-void
.end method
