.class public Lcom/android/task/TaskSelectListAdapter;
.super Lcom/android/task/TaskBaseListAdapter;
.source "TaskSelectListAdapter.java"


# instance fields
.field private mIsChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 19
    const v0, 0x7f03000d

    invoke-direct {p0, p1, v0}, Lcom/android/task/TaskSelectListAdapter;-><init>(Landroid/content/Context;I)V

    .line 20
    const-string v0, "TaskSelectListAdapter"

    const-string v1, "======== TaskSelectListAdapter(Context) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "layout"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/task/TaskSelectListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 25
    const-string v0, "TaskSelectListAdapter"

    const-string v1, "======== TaskSelectListAdapter(Context, int) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .registers 6
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/task/TaskSelectListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 30
    const-string v0, "TaskSelectListAdapter"

    const-string v1, "======== TaskSelectListAdapter(Context, int, Cursor) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .registers 7
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/task/TaskBaseListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/task/TaskSelectListAdapter;->mIsChecked:Z

    .line 36
    const-string v0, "TaskSelectListAdapter"

    const-string v1, "======== TaskSelectListAdapter(Context, int, Cursor, boolean) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 108
    const v1, 0x7f03000d

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;

    .line 110
    .local v0, cache:Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;
    invoke-virtual {p0, v0}, Lcom/android/task/TaskSelectListAdapter;->bindDefaultInfoArea(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/task/TaskSelectListAdapter;->setCheckBoxArea(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V

    .line 113
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f0c0009

    .line 42
    iget-boolean v6, p0, Lcom/android/task/TaskSelectListAdapter;->mDataValid:Z

    if-nez v6, :cond_f

    .line 43
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "this should only be called when the cursor is valid"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 46
    :cond_f
    iget-object v6, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-nez v6, :cond_30

    .line 47
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t move cursor to position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 53
    :cond_30
    invoke-virtual {p0, p1}, Lcom/android/task/TaskSelectListAdapter;->isChecked(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/task/TaskSelectListAdapter;->mIsChecked:Z

    .line 54
    const-string v6, "TaskSelectListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adapter mIsChecked = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/task/TaskSelectListAdapter;->mIsChecked:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/task/Utils$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-nez p2, :cond_aa

    .line 58
    iget-object v6, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v6, v7, p3}, Lcom/android/task/TaskSelectListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 64
    .local v5, v:Landroid/view/View;
    :goto_5a
    iget-object v6, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    .line 65
    .local v4, scale:F
    const/high16 v6, 0x4110

    div-float v1, v6, v4

    .line 66
    .local v1, fdip:F
    iget-object v6, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 67
    .local v2, fhigh:F
    iget-object v6, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 70
    .local v3, fwidth:F
    if-nez p1, :cond_ac

    .line 71
    invoke-virtual {p0}, Lcom/android/task/TaskSelectListAdapter;->getDoneTaskCount()I

    move-result v0

    .line 72
    .local v0, count:I
    const/4 v6, 0x1

    if-ge v0, v6, :cond_9d

    .line 73
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v8, v3

    sub-float v9, v2, v1

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    :cond_9d
    iget-object v6, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    .end local v0           #count:I
    :goto_a2
    iget-object v6, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/task/TaskSelectListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 84
    return-object v5

    .line 60
    .end local v1           #fdip:F
    .end local v2           #fhigh:F
    .end local v3           #fwidth:F
    .end local v4           #scale:F
    .end local v5           #v:Landroid/view/View;
    :cond_aa
    move-object v5, p2

    .restart local v5       #v:Landroid/view/View;
    goto :goto_5a

    .line 78
    .restart local v1       #fdip:F
    .restart local v2       #fhigh:F
    .restart local v3       #fwidth:F
    .restart local v4       #scale:F
    :cond_ac
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v8, v3

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/android/task/TaskBaseListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;

    invoke-direct {v0}, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;-><init>()V

    .line 94
    .local v0, cache:Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;
    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->accountColorBar:Landroid/view/View;

    .line 95
    const v2, 0x7f0c000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->subject:Landroid/widget/TextView;

    .line 96
    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->dueDate:Landroid/widget/TextView;

    .line 97
    const v2, 0x7f0c003b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->checkBox:Landroid/widget/CheckBox;

    .line 98
    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->taskListCompleteImage:Landroid/view/View;

    .line 100
    const v2, 0x7f03000d

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 102
    return-object v1
.end method

.method protected setCheckBox(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V
    .registers 4
    .parameter "cache"

    .prologue
    .line 122
    iget-object v0, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->checkBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/task/TaskSelectListAdapter;->mIsChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 123
    iget-boolean v0, p0, Lcom/android/task/TaskSelectListAdapter;->mIsChecked:Z

    if-eqz v0, :cond_14

    .line 124
    iget-object v0, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->checkBox:Landroid/widget/CheckBox;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 128
    :goto_13
    return-void

    .line 126
    :cond_14
    iget-object v0, p1, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->checkBox:Landroid/widget/CheckBox;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_13
.end method

.method protected setCompleteTaskIcons(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;Z)V
    .registers 3
    .parameter "cache"
    .parameter "complete"

    .prologue
    .line 118
    return-void
.end method
