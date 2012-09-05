.class Lcom/android/task/TaskViewByAdapter$CheckBoxListener;
.super Ljava/lang/Object;
.source "TaskViewByAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskViewByAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxListener"
.end annotation


# instance fields
.field private final mPosition:I

.field private final mTasksId:J

.field final synthetic this$0:Lcom/android/task/TaskViewByAdapter;


# direct methods
.method private constructor <init>(Lcom/android/task/TaskViewByAdapter;JI)V
    .registers 5
    .parameter
    .parameter "tasksId"
    .parameter "position"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/task/TaskViewByAdapter$CheckBoxListener;->this$0:Lcom/android/task/TaskViewByAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p4, p0, Lcom/android/task/TaskViewByAdapter$CheckBoxListener;->mPosition:I

    .line 59
    iput-wide p2, p0, Lcom/android/task/TaskViewByAdapter$CheckBoxListener;->mTasksId:J

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/task/TaskViewByAdapter;JILcom/android/task/TaskViewByAdapter$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/task/TaskViewByAdapter$CheckBoxListener;-><init>(Lcom/android/task/TaskViewByAdapter;JI)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 9
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x0

    .line 63
    sget-object v2, Lcom/android/task/Tasks;->TASKS_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/task/TaskViewByAdapter$CheckBoxListener;->mTasksId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 64
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/task/TaskViewByAdapter$CheckBoxListener;->this$0:Lcom/android/task/TaskViewByAdapter;

    #getter for: Lcom/android/task/TaskViewByAdapter;->mValues:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/android/task/TaskViewByAdapter;->access$000(Lcom/android/task/TaskViewByAdapter;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 65
    if-eqz p2, :cond_4d

    const/4 v0, 0x1

    .line 66
    .local v0, checked:I
    :goto_15
    iget-object v2, p0, Lcom/android/task/TaskViewByAdapter$CheckBoxListener;->this$0:Lcom/android/task/TaskViewByAdapter;

    #getter for: Lcom/android/task/TaskViewByAdapter;->mValues:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/android/task/TaskViewByAdapter;->access$000(Lcom/android/task/TaskViewByAdapter;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "selected"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    iget-object v2, p0, Lcom/android/task/TaskViewByAdapter$CheckBoxListener;->this$0:Lcom/android/task/TaskViewByAdapter;

    #getter for: Lcom/android/task/TaskViewByAdapter;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/task/TaskViewByAdapter;->access$100(Lcom/android/task/TaskViewByAdapter;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/task/TaskViewByAdapter$CheckBoxListener;->this$0:Lcom/android/task/TaskViewByAdapter;

    #getter for: Lcom/android/task/TaskViewByAdapter;->mValues:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/android/task/TaskViewByAdapter;->access$000(Lcom/android/task/TaskViewByAdapter;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lcom/android/task/TaskViewByAdapter$CheckBoxListener;->this$0:Lcom/android/task/TaskViewByAdapter;

    #getter for: Lcom/android/task/TaskViewByAdapter;->mIsChecked:[Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/task/TaskViewByAdapter;->access$200(Lcom/android/task/TaskViewByAdapter;)[Ljava/lang/Boolean;

    move-result-object v3

    iget v4, p0, Lcom/android/task/TaskViewByAdapter$CheckBoxListener;->mPosition:I

    if-eqz p2, :cond_4f

    invoke-static {}, Lcom/android/task/TaskViewByAdapter;->access$300()Ljava/lang/Boolean;

    move-result-object v2

    :goto_41
    aput-object v2, v3, v4

    .line 70
    iget-object v2, p0, Lcom/android/task/TaskViewByAdapter$CheckBoxListener;->this$0:Lcom/android/task/TaskViewByAdapter;

    #getter for: Lcom/android/task/TaskViewByAdapter;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/task/TaskViewByAdapter;->access$500(Lcom/android/task/TaskViewByAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void

    .line 65
    .end local v0           #checked:I
    :cond_4d
    const/4 v0, 0x0

    goto :goto_15

    .line 68
    .restart local v0       #checked:I
    :cond_4f
    invoke-static {}, Lcom/android/task/TaskViewByAdapter;->access$400()Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_41
.end method
