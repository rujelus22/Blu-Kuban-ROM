.class public Lcom/android/task/TaskMainListView;
.super Lcom/android/task/TaskBaseListView;
.source "TaskMainListView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field mCreateButton:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/task/TaskMainListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-string v0, "TaskMainListView"

    const-string v1, "======== TaskMainListView(Context) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/task/TaskBaseListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/task/TaskMainListView;->mCreateButton:Landroid/widget/LinearLayout;

    .line 46
    const-string v0, "TaskMainListView"

    const-string v1, "======== TaskMainListView(Context, AttributeSet) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0}, Lcom/android/task/TaskMainListView;->setupLayout()V

    .line 49
    return-void
.end method

.method private setupLayout()V
    .registers 5

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000f

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/task/TaskMainListView;->mCreateButton:Landroid/widget/LinearLayout;

    .line 92
    iget-object v1, p0, Lcom/android/task/TaskMainListView;->mCreateButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/task/TaskMainListView$1;

    invoke-direct {v2, p0}, Lcom/android/task/TaskMainListView$1;-><init>(Lcom/android/task/TaskMainListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/android/task/TaskMainListView;->mCreateButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/task/TaskMainListView$2;

    invoke-direct {v2, p0}, Lcom/android/task/TaskMainListView$2;-><init>(Lcom/android/task/TaskMainListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    const v1, 0x7f0c0035

    invoke-virtual {p0, v1}, Lcom/android/task/TaskMainListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    .line 118
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/task/TaskMainListView$3;

    invoke-direct {v2, p0}, Lcom/android/task/TaskMainListView$3;-><init>(Lcom/android/task/TaskMainListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 137
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/task/TaskMainListView;->mCreateButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 138
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 139
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 141
    new-instance v1, Lcom/android/task/TaskMainListAdapter;

    iget-object v2, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/task/TaskMainListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    .line 142
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 148
    const v1, 0x7f0c0027

    invoke-virtual {p0, v1}, Lcom/android/task/TaskMainListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 149
    .local v0, noTasksImage:Landroid/widget/ImageView;
    new-instance v1, Lcom/android/task/TaskMainListView$4;

    invoke-direct {v1, p0}, Lcom/android/task/TaskMainListView$4;-><init>(Lcom/android/task/TaskMainListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method


# virtual methods
.method public configurationChanged(Z)V
    .registers 6
    .parameter "isPortrait"

    .prologue
    const v3, 0x7f0c002a

    const/4 v2, 0x1

    .line 189
    const-string v0, "TaskMainListView"

    const-string v1, "======== configurationChanged(boolean isPortrait) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-eqz p1, :cond_30

    .line 191
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 192
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_27

    .line 193
    invoke-virtual {p0, v3}, Lcom/android/task/TaskMainListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 196
    :cond_27
    iget-object v0, p0, Lcom/android/task/TaskMainListView;->mCreateButton:Landroid/widget/LinearLayout;

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 205
    :goto_2f
    return-void

    .line 198
    :cond_30
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 199
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_4a

    .line 200
    invoke-virtual {p0, v3}, Lcom/android/task/TaskMainListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 203
    :cond_4a
    iget-object v0, p0, Lcom/android/task/TaskMainListView;->mCreateButton:Landroid/widget/LinearLayout;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2f
.end method

.method public deleteTask(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p1, v1

    .line 216
    .local v0, realPosition:I
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/task/TaskBaseListAdapter;->deleteTask(I)V

    .line 217
    return-void
.end method

.method protected getSelection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    const-string v0, "selected=1"

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 171
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v1}, Lcom/android/task/TaskBaseListAdapter;->getSubject()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 173
    :cond_15
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_22
    :goto_22
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 180
    const v1, 0x7f0c0055

    const v2, 0x7f0a0016

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 183
    const v1, 0x7f0c005a

    const v2, 0x7f0a001c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 184
    const v1, 0x7f0c005b

    const v2, 0x7f0a001d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 186
    return-void

    .line 175
    :cond_41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_22

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x19

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 208
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v1, v0, :cond_a

    .line 211
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public printTask(I)Landroid/content/Intent;
    .registers 4
    .parameter "position"

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p1, v1

    .line 222
    .local v0, realPosition:I
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/task/TaskBaseListAdapter;->printTask(I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public shareTask(I)Landroid/content/Intent;
    .registers 4
    .parameter "position"

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p1, v1

    .line 228
    .local v0, realPosition:I
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/task/TaskBaseListAdapter;->shareTask(I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method protected startQuery()V
    .registers 9

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/task/TaskMainListView;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 235
    .local v3, uri:Landroid/net/Uri;
    const-string v0, "SANDEEP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In start query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mQueryHandler:Lcom/android/task/TaskBaseListView$QueryHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/task/TaskMainListView;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/task/TaskMainListView;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/task/TaskMainListView;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/task/TaskMainListView;->getOrderBy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/android/task/TaskBaseListView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public update(ILandroid/database/Cursor;)V
    .registers 13
    .parameter "token"
    .parameter "cursor"

    .prologue
    const v9, 0x7f0c0029

    const v5, 0x7f0c0026

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 52
    const-string v3, "TaskMainListView"

    const-string v4, "======== update(int token, Cursor cursor) ========"

    invoke-static {v3, v4}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-eqz p2, :cond_19

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_90

    .line 55
    :cond_19
    const v3, 0x7f0c002a

    invoke-virtual {p0, v3}, Lcom/android/task/TaskMainListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 56
    invoke-virtual {p0, v9}, Lcom/android/task/TaskMainListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 57
    invoke-virtual {p0, v5}, Lcom/android/task/TaskMainListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :goto_31
    invoke-super {p0, p1, p2}, Lcom/android/task/TaskBaseListView;->update(ILandroid/database/Cursor;)V

    .line 66
    iget-object v3, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v3}, Lcom/android/task/TaskBaseListAdapter;->getDoneTaskCount()I

    move-result v3

    sput v3, Lcom/android/task/TaskMainActivity;->mDoneCount:I

    .line 67
    sget v3, Lcom/android/task/TaskMainActivity;->mTotalCount:I

    sget v4, Lcom/android/task/TaskMainActivity;->mDoneCount:I

    sub-int v1, v3, v4

    .line 68
    .local v1, sub:I
    const-string v0, ""

    .line 69
    .local v0, cntText:Ljava/lang/String;
    sget v3, Lcom/android/task/TaskMainActivity;->mDoneCount:I

    if-lez v3, :cond_9f

    .line 70
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    const-string v3, "(%d/%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    sget v5, Lcom/android/task/TaskMainActivity;->mTotalCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_64
    const v3, 0x7f0c000d

    invoke-virtual {p0, v3}, Lcom/android/task/TaskMainListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 77
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const-string v3, "---"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TaskMainListView: Update()  cntText:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget v3, Lcom/android/task/TaskMainActivity;->mTotalCount:I

    if-nez v3, :cond_b5

    .line 80
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :goto_8f
    return-void

    .line 59
    .end local v0           #cntText:Ljava/lang/String;
    .end local v1           #sub:I
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_90
    invoke-virtual {p0, v9}, Lcom/android/task/TaskMainListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 60
    invoke-virtual {p0, v5}, Lcom/android/task/TaskMainListView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    .line 73
    .restart local v0       #cntText:Ljava/lang/String;
    .restart local v1       #sub:I
    :cond_9f
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    const-string v3, "(%d)"

    new-array v4, v8, [Ljava/lang/Object;

    sget v5, Lcom/android/task/TaskMainActivity;->mTotalCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    .line 82
    .restart local v2       #tv:Landroid/widget/TextView;
    :cond_b5
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8f
.end method
