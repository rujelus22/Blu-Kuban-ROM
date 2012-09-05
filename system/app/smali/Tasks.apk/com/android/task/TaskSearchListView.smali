.class public Lcom/android/task/TaskSearchListView;
.super Lcom/android/task/TaskBaseListView;
.source "TaskSearchListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mSearchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/task/TaskSearchListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const-string v0, "TaskSearchListView"

    const-string v1, "======== TaskSearchListView(Context) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/task/TaskBaseListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/task/TaskSearchListView;->mSearchString:Ljava/lang/String;

    .line 27
    const-string v0, "TaskSearchListView"

    const-string v1, "======== TaskSearchListView(Context, AttributeSet) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-direct {p0}, Lcom/android/task/TaskSearchListView;->setupLayout()V

    .line 30
    return-void
.end method

.method private setupLayout()V
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030010

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Lcom/android/task/TaskSearchListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    .line 51
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 52
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 53
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 54
    new-instance v0, Lcom/android/task/TaskSearchListAdapter;

    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/task/TaskSearchListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    .line 55
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected getUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/task/TaskSearchListActivity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/task/TaskSearchListView;->mSearchString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onChangeTasks(Z)V
    .registers 2
    .parameter "selfChange"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/task/TaskSearchListView;->update()V

    .line 61
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .registers 2
    .parameter "searchString"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/task/TaskSearchListView;->mSearchString:Ljava/lang/String;

    .line 65
    return-void
.end method

.method protected startQuery()V
    .registers 9

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/task/TaskSearchListView;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 70
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mQueryHandler:Lcom/android/task/TaskBaseListView$QueryHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/task/TaskSearchListView;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/task/TaskSearchListView;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/task/TaskSearchListView;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/task/TaskSearchListView;->getOrderBy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/android/task/TaskBaseListView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public update(ILandroid/database/Cursor;)V
    .registers 9
    .parameter "token"
    .parameter "cursor"

    .prologue
    const v5, 0x7f0c0029

    const v4, 0x7f0c0026

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 33
    const-string v0, "TaskSearchListView"

    const-string v1, "======== update(int token, Cursor cursor) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_28

    .line 36
    invoke-virtual {p0, v5}, Lcom/android/task/TaskSearchListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    invoke-virtual {p0, v4}, Lcom/android/task/TaskSearchListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :goto_24
    invoke-super {p0, p1, p2}, Lcom/android/task/TaskBaseListView;->update(ILandroid/database/Cursor;)V

    .line 45
    return-void

    .line 40
    :cond_28
    invoke-virtual {p0, v5}, Lcom/android/task/TaskSearchListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 41
    invoke-virtual {p0, v4}, Lcom/android/task/TaskSearchListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24
.end method
