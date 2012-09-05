.class public abstract Lcom/android/task/TaskBaseListView;
.super Landroid/widget/LinearLayout;
.source "TaskBaseListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/task/TaskBaseListView$QueryHandler;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/android/task/TaskBaseListAdapter;

.field protected mContext:Landroid/content/Context;

.field private mFackQueryFlg:Z

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mList:Landroid/widget/ListView;

.field private mObserver1:Landroid/database/ContentObserver;

.field private mObserver2:Landroid/database/ContentObserver;

.field protected mQueryHandler:Lcom/android/task/TaskBaseListView$QueryHandler;

.field private mSortOrderBy:Ljava/lang/String;

.field private mSortedIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/task/TaskBaseListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const-string v0, "TaskBaseListView"

    const-string v1, "======== TaskBaseListView(Context context) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    .line 42
    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    .line 44
    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mQueryHandler:Lcom/android/task/TaskBaseListView$QueryHandler;

    .line 46
    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mSortedIds:[I

    .line 48
    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mSortOrderBy:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/task/TaskBaseListView;->mFackQueryFlg:Z

    .line 119
    new-instance v0, Lcom/android/task/TaskBaseListView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/task/TaskBaseListView$1;-><init>(Lcom/android/task/TaskBaseListView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mObserver1:Landroid/database/ContentObserver;

    .line 133
    new-instance v0, Lcom/android/task/TaskBaseListView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/task/TaskBaseListView$2;-><init>(Lcom/android/task/TaskBaseListView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mObserver2:Landroid/database/ContentObserver;

    .line 58
    const-string v0, "TaskBaseListView"

    const-string v1, "======== TaskBaseListView(Context context, AttributeSet attrs) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    new-instance v0, Lcom/android/task/TaskBaseListView$QueryHandler;

    invoke-direct {v0, p0}, Lcom/android/task/TaskBaseListView$QueryHandler;-><init>(Lcom/android/task/TaskBaseListView;)V

    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mQueryHandler:Lcom/android/task/TaskBaseListView$QueryHandler;

    .line 66
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/task/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/task/TaskBaseListView;->mObserver1:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/task/Tasks;->SYNCHED_TASKS_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/task/TaskBaseListView;->mObserver2:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    return-void
.end method

.method private getSortedTaskIds(Landroid/database/Cursor;)[I
    .registers 6
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 171
    if-nez p1, :cond_4

    .line 187
    :cond_3
    :goto_3
    return-object v2

    .line 174
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 177
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v2, v3, [I

    .line 179
    .local v2, sortedTaskIds:[I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 180
    const/4 v1, 0x0

    .line 182
    .local v1, i:I
    :cond_14
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 183
    .local v0, columnIndex:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v2, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    .line 185
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_3
.end method

.method private startFakeQuery()V
    .registers 10

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/task/TaskBaseListView;->mFackQueryFlg:Z

    if-nez v0, :cond_35

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/task/TaskBaseListView;->mFackQueryFlg:Z

    .line 112
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mQueryHandler:Lcom/android/task/TaskBaseListView$QueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/task/TaskBaseListView;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/task/TaskBaseListView;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/task/TaskBaseListView;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/task/TaskBaseListView;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/task/TaskBaseListView;->getOrderBy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIMIT 10"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/android/task/TaskBaseListView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_35
    return-void
.end method


# virtual methods
.method public configurationChanged(Z)V
    .registers 4
    .parameter "isPortrait"

    .prologue
    .line 101
    const-string v0, "TaskBaseListView"

    const-string v1, "======== configurationChanged(boolean isPortrait) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-eqz p1, :cond_12

    .line 103
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 107
    :goto_11
    return-void

    .line 105
    :cond_12
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    goto :goto_11
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mObserver1:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 95
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mObserver2:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 97
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/task/TaskBaseListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 98
    return-void
.end method

.method protected getOrderBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mSortOrderBy:Ljava/lang/String;

    return-object v0
.end method

.method protected getProjection()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSelection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskCount()I
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v0}, Lcom/android/task/TaskBaseListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method protected getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 193
    sget-object v0, Lcom/android/task/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected onChangeTasks(Z)V
    .registers 2
    .parameter "selfChange"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/task/TaskBaseListView;->update()V

    .line 150
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    if-nez p3, :cond_21

    const-string v1, "com.android.task.TaskSearchListActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 159
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/task/TaskEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 168
    :goto_20
    return-void

    .line 162
    :cond_21
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/task/TaskViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    const-string v1, "selected"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 164
    const-string v1, "sortedIds"

    iget-object v2, p0, Lcom/android/task/TaskBaseListView;->mSortedIds:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_20
.end method

.method public setOrderBy(Ljava/lang/String;)V
    .registers 2
    .parameter "sortOrderBy"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/task/TaskBaseListView;->mSortOrderBy:Ljava/lang/String;

    .line 214
    return-void
.end method

.method protected abstract startQuery()V
.end method

.method public update()V
    .registers 3

    .prologue
    .line 71
    const-string v0, "TaskBaseListView"

    const-string v1, "======== update ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Lcom/android/task/TaskBaseListView;->startFakeQuery()V

    .line 75
    invoke-virtual {p0}, Lcom/android/task/TaskBaseListView;->startQuery()V

    .line 76
    return-void
.end method

.method public update(ILandroid/database/Cursor;)V
    .registers 5
    .parameter "token"
    .parameter "cursor"

    .prologue
    .line 79
    const-string v0, "TaskBaseListView"

    const-string v1, "======== update(int token, Cursor cursor) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/task/TaskBaseListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 83
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mSortedIds:[I

    if-eqz v0, :cond_13

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mSortedIds:[I

    .line 87
    :cond_13
    invoke-direct {p0, p2}, Lcom/android/task/TaskBaseListView;->getSortedTaskIds(Landroid/database/Cursor;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mSortedIds:[I

    .line 89
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v0}, Lcom/android/task/TaskBaseListAdapter;->updateCheckedIds()V

    .line 90
    return-void
.end method
