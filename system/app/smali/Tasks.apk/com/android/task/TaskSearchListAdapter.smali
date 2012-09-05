.class public Lcom/android/task/TaskSearchListAdapter;
.super Lcom/android/task/TaskBaseListAdapter;
.source "TaskSearchListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 17
    const v0, 0x7f03000c

    invoke-direct {p0, p1, v0}, Lcom/android/task/TaskSearchListAdapter;-><init>(Landroid/content/Context;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "layout"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/task/TaskSearchListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .registers 5
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/task/TaskSearchListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .registers 5
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/task/TaskBaseListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 32
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 83
    const v1, 0x7f03000c

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;

    .line 85
    .local v0, cache:Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;
    invoke-virtual {p0, v0}, Lcom/android/task/TaskSearchListAdapter;->bindDefaultInfoArea(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/task/TaskSearchListAdapter;->bindAdditionalInfoArea(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/task/TaskSearchListAdapter;->setCheckBoxArea(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V

    .line 90
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 39
    iget-boolean v1, p0, Lcom/android/task/TaskSearchListAdapter;->mDataValid:Z

    if-nez v1, :cond_c

    .line 40
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "this should only be called when the cursor is valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_c
    iget-object v1, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 44
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_2d
    if-nez p2, :cond_3f

    .line 49
    iget-object v1, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/task/TaskSearchListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, v:Landroid/view/View;
    :goto_37
    iget-object v1, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/task/TaskSearchListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 56
    return-object v0

    .line 51
    .end local v0           #v:Landroid/view/View;
    :cond_3f
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_37
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/android/task/TaskBaseListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;

    invoke-direct {v0}, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;-><init>()V

    .line 65
    .local v0, cache:Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;
    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->accountColorBar:Landroid/view/View;

    .line 66
    const v2, 0x7f0c000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->subject:Landroid/widget/TextView;

    .line 67
    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->dueDate:Landroid/widget/TextView;

    .line 68
    const v2, 0x7f0c003e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->reminder:Landroid/widget/ImageView;

    .line 69
    const v2, 0x7f0c003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->priority:Landroid/widget/ImageView;

    .line 70
    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->dDay:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f0c003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->checkBox:Landroid/widget/CheckBox;

    .line 72
    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->taskListCompleteImage:Landroid/view/View;

    .line 73
    const v2, 0x7f0c003d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->reminderDdayContainer:Landroid/view/View;

    .line 75
    const v2, 0x7f03000c

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 77
    return-object v1
.end method

.method protected onContentChanged()V
    .registers 3

    .prologue
    .line 94
    const-string v0, "TaskMainListAdapter"

    const-string v1, "======== onContentChanged ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-super {p0}, Lcom/android/task/TaskBaseListAdapter;->onContentChanged()V

    .line 96
    return-void
.end method
