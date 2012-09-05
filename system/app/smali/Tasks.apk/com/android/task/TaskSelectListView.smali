.class public abstract Lcom/android/task/TaskSelectListView;
.super Lcom/android/task/TaskBaseListView;
.source "TaskSelectListView.java"


# instance fields
.field protected mBackgroundView:Landroid/view/View;

.field private mDoneTaskView:Landroid/view/View;

.field private mIsCheckedDoneTask:Z

.field private mIsCheckedSelectAll:Z

.field private mSelectAllView:Landroid/view/View;

.field protected mSoftkeyLeft:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/task/TaskSelectListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const-string v0, "TaskSelectListView"

    const-string v1, "======== TaskSelectListView(Context) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/task/TaskBaseListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-boolean v1, p0, Lcom/android/task/TaskSelectListView;->mIsCheckedSelectAll:Z

    .line 24
    iput-boolean v1, p0, Lcom/android/task/TaskSelectListView;->mIsCheckedDoneTask:Z

    .line 26
    iput-object v0, p0, Lcom/android/task/TaskSelectListView;->mBackgroundView:Landroid/view/View;

    .line 27
    iput-object v0, p0, Lcom/android/task/TaskSelectListView;->mSelectAllView:Landroid/view/View;

    .line 28
    iput-object v0, p0, Lcom/android/task/TaskSelectListView;->mDoneTaskView:Landroid/view/View;

    .line 29
    iput-object v0, p0, Lcom/android/task/TaskSelectListView;->mSoftkeyLeft:Landroid/widget/Button;

    .line 40
    const-string v0, "TaskSelectListView"

    const-string v1, "======== TaskSelectListView(Context, AttributeSet) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->setupLayout()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/task/TaskSelectListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->setSelectAllCheck()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/task/TaskSelectListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->setDoneTaskCheck()V

    return-void
.end method

.method private needToggleCheckBox(I)Z
    .registers 8
    .parameter "checkBoxType"

    .prologue
    const/4 v4, 0x1

    .line 137
    packed-switch p1, :pswitch_data_38

    .line 157
    :cond_4
    const/4 v4, 0x0

    :cond_5
    :goto_5
    return v4

    .line 139
    :pswitch_6
    iget-object v5, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v5}, Lcom/android/task/TaskBaseListAdapter;->getCount()I

    move-result v3

    .line 140
    .local v3, listCount:I
    iget-object v5, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v5}, Lcom/android/task/TaskBaseListAdapter;->getCheckedTaskCount()I

    move-result v1

    .line 141
    .local v1, checkedItemCount:I
    iget-boolean v5, p0, Lcom/android/task/TaskSelectListView;->mIsCheckedSelectAll:Z

    if-eqz v5, :cond_18

    if-ne v3, v1, :cond_5

    :cond_18
    iget-boolean v5, p0, Lcom/android/task/TaskSelectListView;->mIsCheckedSelectAll:Z

    if-nez v5, :cond_4

    if-ne v3, v1, :cond_4

    goto :goto_5

    .line 147
    .end local v1           #checkedItemCount:I
    .end local v3           #listCount:I
    :pswitch_1f
    iget-object v5, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v5}, Lcom/android/task/TaskBaseListAdapter;->getDoneTaskCount()I

    move-result v2

    .line 148
    .local v2, doneTaskCount:I
    iget-object v5, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v5}, Lcom/android/task/TaskBaseListAdapter;->getCheckedDoneTaskCount()I

    move-result v0

    .line 149
    .local v0, checkedDoneTaskCount:I
    iget-boolean v5, p0, Lcom/android/task/TaskSelectListView;->mIsCheckedDoneTask:Z

    if-eqz v5, :cond_31

    if-ne v2, v0, :cond_5

    :cond_31
    iget-boolean v5, p0, Lcom/android/task/TaskSelectListView;->mIsCheckedDoneTask:Z

    if-nez v5, :cond_4

    if-ne v2, v0, :cond_4

    goto :goto_5

    .line 137
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1f
    .end packed-switch
.end method

.method private refreshCheckBoxView(Landroid/widget/CheckBox;Z)V
    .registers 4
    .parameter "checkbox"
    .parameter "checked"

    .prologue
    .line 70
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    if-eqz p2, :cond_c

    .line 73
    const v0, 0x7f020023

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 77
    :goto_b
    return-void

    .line 75
    :cond_c
    const v0, 0x7f020021

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_b
.end method

.method private setDoneTaskCheck()V
    .registers 4

    .prologue
    .line 110
    const-string v0, "TaskSelectListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsCheckedDoneTask = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/task/TaskSelectListView;->mIsCheckedDoneTask:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->toggleDoneTaskView()V

    .line 114
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    iget-boolean v2, p0, Lcom/android/task/TaskSelectListView;->mIsCheckedDoneTask:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/task/TaskBaseListAdapter;->setDoneTaskCheck(Landroid/widget/ListView;Z)V

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/task/TaskSelectListView;->needToggleCheckBox(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 117
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->toggleSelectAllView()V

    .line 120
    :cond_30
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->updateSoftkeyLeftStatus()V

    .line 121
    return-void
.end method

.method private setItemCheck(IJ)V
    .registers 9
    .parameter "position"
    .parameter "taskID"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 124
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/task/TaskBaseListAdapter;->isChecked(I)Z

    move-result v0

    .line 125
    .local v0, isChecked:Z
    iget-object v4, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    if-nez v0, :cond_23

    move v1, v2

    :goto_d
    invoke-virtual {v4, p2, p3, v1}, Lcom/android/task/TaskBaseListAdapter;->setCheck(JZ)V

    .line 127
    invoke-direct {p0, v3}, Lcom/android/task/TaskSelectListView;->needToggleCheckBox(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 128
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->toggleSelectAllView()V

    .line 131
    :cond_19
    invoke-direct {p0, v2}, Lcom/android/task/TaskSelectListView;->needToggleCheckBox(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 132
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->toggleDoneTaskView()V

    .line 134
    :cond_22
    return-void

    :cond_23
    move v1, v3

    .line 125
    goto :goto_d
.end method

.method private setLayoutEmpty()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/task/TaskSelectListView;->mSelectAllView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/android/task/TaskSelectListView;->mDoneTaskView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/android/task/TaskSelectListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/android/task/TaskSelectListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    return-void
.end method

.method private setLayoutShow()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 250
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/android/task/TaskSelectListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/android/task/TaskSelectListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/android/task/TaskSelectListView;->mSelectAllView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    invoke-direct {p0, v1}, Lcom/android/task/TaskSelectListView;->needToggleCheckBox(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 256
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->toggleSelectAllView()V

    .line 260
    :cond_25
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v0}, Lcom/android/task/TaskBaseListAdapter;->getDoneTaskCount()I

    move-result v0

    if-nez v0, :cond_33

    .line 261
    iget-object v0, p0, Lcom/android/task/TaskSelectListView;->mDoneTaskView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    :cond_32
    :goto_32
    return-void

    .line 263
    :cond_33
    iget-object v0, p0, Lcom/android/task/TaskSelectListView;->mDoneTaskView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/task/TaskSelectListView;->needToggleCheckBox(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 265
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->toggleDoneTaskView()V

    goto :goto_32
.end method

.method private setSelectAllCheck()V
    .registers 4

    .prologue
    .line 96
    const-string v0, "TaskSelectListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsCheckedSelectAll = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/task/TaskSelectListView;->mIsCheckedSelectAll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->toggleSelectAllView()V

    .line 100
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    iget-boolean v2, p0, Lcom/android/task/TaskSelectListView;->mIsCheckedSelectAll:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/task/TaskBaseListAdapter;->setAllCheck(Landroid/widget/ListView;Z)V

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/task/TaskSelectListView;->needToggleCheckBox(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 103
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->toggleDoneTaskView()V

    .line 106
    :cond_30
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->updateSoftkeyLeftStatus()V

    .line 107
    return-void
.end method

.method private setupLayout()V
    .registers 4

    .prologue
    .line 184
    const-string v0, "TaskSelectListView"

    const-string v1, "======== setupLayout ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030011

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 188
    const v0, 0x7f0c0040

    invoke-virtual {p0, v0}, Lcom/android/task/TaskSelectListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskSelectListView;->mSelectAllView:Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/android/task/TaskSelectListView;->mSelectAllView:Landroid/view/View;

    new-instance v1, Lcom/android/task/TaskSelectListView$1;

    invoke-direct {v1, p0}, Lcom/android/task/TaskSelectListView$1;-><init>(Lcom/android/task/TaskSelectListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v0, 0x7f0c0043

    invoke-virtual {p0, v0}, Lcom/android/task/TaskSelectListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskSelectListView;->mBackgroundView:Landroid/view/View;

    .line 199
    const v0, 0x7f0c0044

    invoke-virtual {p0, v0}, Lcom/android/task/TaskSelectListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskSelectListView;->mDoneTaskView:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/android/task/TaskSelectListView;->mDoneTaskView:Landroid/view/View;

    new-instance v1, Lcom/android/task/TaskSelectListView$2;

    invoke-direct {v1, p0}, Lcom/android/task/TaskSelectListView$2;-><init>(Lcom/android/task/TaskSelectListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Lcom/android/task/TaskSelectListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    .line 209
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 212
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 215
    new-instance v0, Lcom/android/task/TaskSelectListAdapter;

    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/task/TaskSelectListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    .line 216
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/task/TaskSelectListView;->setupSoftkey()V

    .line 219
    return-void
.end method

.method private toggleDoneTaskView()V
    .registers 3

    .prologue
    .line 89
    iget-boolean v1, p0, Lcom/android/task/TaskSelectListView;->mIsCheckedDoneTask:Z

    if-nez v1, :cond_16

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, p0, Lcom/android/task/TaskSelectListView;->mIsCheckedDoneTask:Z

    .line 91
    const v1, 0x7f0c0046

    invoke-virtual {p0, v1}, Lcom/android/task/TaskSelectListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 92
    .local v0, doneTaskCheckBox:Landroid/widget/CheckBox;
    iget-boolean v1, p0, Lcom/android/task/TaskSelectListView;->mIsCheckedDoneTask:Z

    invoke-direct {p0, v0, v1}, Lcom/android/task/TaskSelectListView;->refreshCheckBoxView(Landroid/widget/CheckBox;Z)V

    .line 93
    return-void

    .line 89
    .end local v0           #doneTaskCheckBox:Landroid/widget/CheckBox;
    :cond_16
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private toggleSelectAllView()V
    .registers 3

    .prologue
    .line 81
    iget-boolean v1, p0, Lcom/android/task/TaskSelectListView;->mIsCheckedSelectAll:Z

    if-nez v1, :cond_16

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, p0, Lcom/android/task/TaskSelectListView;->mIsCheckedSelectAll:Z

    .line 83
    const v1, 0x7f0c0042

    invoke-virtual {p0, v1}, Lcom/android/task/TaskSelectListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 84
    .local v0, selectAllCheckBox:Landroid/widget/CheckBox;
    iget-boolean v1, p0, Lcom/android/task/TaskSelectListView;->mIsCheckedSelectAll:Z

    invoke-direct {p0, v0, v1}, Lcom/android/task/TaskSelectListView;->refreshCheckBoxView(Landroid/widget/CheckBox;Z)V

    .line 85
    return-void

    .line 81
    .end local v0           #selectAllCheckBox:Landroid/widget/CheckBox;
    :cond_16
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private updateLayout()V
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v0}, Lcom/android/task/TaskBaseListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 233
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->setLayoutEmpty()V

    .line 238
    :goto_b
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->updateSoftkeyLeftStatus()V

    .line 239
    return-void

    .line 235
    :cond_f
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->setLayoutShow()V

    goto :goto_b
.end method

.method private updateSoftkeyLeftStatus()V
    .registers 4

    .prologue
    .line 222
    const-string v0, "TaskSelectListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSoftkeyLeftStatus check count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v2}, Lcom/android/task/TaskBaseListAdapter;->getCheckedTaskCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v0}, Lcom/android/task/TaskBaseListAdapter;->getCheckedTaskCount()I

    move-result v0

    if-gtz v0, :cond_2d

    .line 225
    iget-object v0, p0, Lcom/android/task/TaskSelectListView;->mSoftkeyLeft:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 229
    :goto_2c
    return-void

    .line 227
    :cond_2d
    iget-object v0, p0, Lcom/android/task/TaskSelectListView;->mSoftkeyLeft:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2c
.end method


# virtual methods
.method public configurationChanged(Z)V
    .registers 6
    .parameter "isPortrait"

    .prologue
    const v3, 0x7f0c0040

    const v2, 0x7f0c002a

    .line 280
    const-string v0, "TaskSelectListView"

    const-string v1, "======== configurationChanged(boolean isPortrait) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    if-eqz p1, :cond_2b

    .line 283
    iget-object v0, p0, Lcom/android/task/TaskSelectListView;->mBackgroundView:Landroid/view/View;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 284
    invoke-virtual {p0, v2}, Lcom/android/task/TaskSelectListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 286
    invoke-virtual {p0, v3}, Lcom/android/task/TaskSelectListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 293
    :goto_2a
    return-void

    .line 288
    :cond_2b
    iget-object v0, p0, Lcom/android/task/TaskSelectListView;->mBackgroundView:Landroid/view/View;

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 289
    invoke-virtual {p0, v2}, Lcom/android/task/TaskSelectListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 291
    invoke-virtual {p0, v3}, Lcom/android/task/TaskSelectListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2a
.end method

.method protected getSelectedTasks()[J
    .registers 3

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, result:[J
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    if-eqz v1, :cond_b

    .line 56
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v1}, Lcom/android/task/TaskBaseListAdapter;->getSelectedIDs()[J

    move-result-object v0

    .line 58
    :cond_b
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 162
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "TaskSelectListView"

    const-string v1, "======== onItemClick ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v0, "TaskSelectListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0, p3, p4, p5}, Lcom/android/task/TaskSelectListView;->setItemCheck(IJ)V

    .line 167
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->updateSoftkeyLeftStatus()V

    .line 168
    return-void
.end method

.method protected setSelectedTasks([J)V
    .registers 7
    .parameter "values"

    .prologue
    .line 62
    if-eqz p1, :cond_14

    array-length v1, p1

    if-lez v1, :cond_14

    .line 63
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_14

    .line 64
    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    aget-wide v2, p1, v0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/task/TaskBaseListAdapter;->setCheck(JZ)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 67
    .end local v0           #i:I
    :cond_14
    return-void
.end method

.method protected abstract setupSoftkey()V
.end method

.method protected startQuery()V
    .registers 9

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/task/TaskSelectListView;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 273
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/task/TaskBaseListView;->mQueryHandler:Lcom/android/task/TaskBaseListView$QueryHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/task/TaskSelectListView;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/task/TaskSelectListView;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/task/TaskSelectListView;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/task/TaskSelectListView;->getOrderBy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/android/task/TaskBaseListView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public update(ILandroid/database/Cursor;)V
    .registers 5
    .parameter "token"
    .parameter "cursor"

    .prologue
    .line 173
    const-string v0, "TaskSelectListView"

    const-string v1, "======== update(int token, Cursor cursor) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-nez p1, :cond_a

    .line 181
    :goto_9
    return-void

    .line 178
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/task/TaskBaseListView;->update(ILandroid/database/Cursor;)V

    .line 180
    invoke-direct {p0}, Lcom/android/task/TaskSelectListView;->updateLayout()V

    goto :goto_9
.end method
