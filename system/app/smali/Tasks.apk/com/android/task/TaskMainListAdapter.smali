.class public Lcom/android/task/TaskMainListAdapter;
.super Lcom/android/task/TaskBaseListAdapter;
.source "TaskMainListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 24
    const v0, 0x7f03000c

    invoke-direct {p0, p1, v0}, Lcom/android/task/TaskMainListAdapter;-><init>(Landroid/content/Context;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "layout"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/task/TaskMainListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .registers 5
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/task/TaskMainListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .registers 5
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/task/TaskBaseListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;

    .line 185
    .local v0, cache:Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;
    invoke-virtual {p0, v0}, Lcom/android/task/TaskMainListAdapter;->bindDefaultInfoArea(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/task/TaskMainListAdapter;->bindAdditionalInfoArea(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/task/TaskMainListAdapter;->setCheckBoxArea(Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;)V

    .line 190
    return-void
.end method

.method public chageWeight(ZLandroid/view/View;Landroid/database/Cursor;)V
    .registers 19
    .parameter "isPORTRAIT"
    .parameter "v"
    .parameter "cursor"

    .prologue
    .line 48
    const-string v13, "due_date"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 49
    .local v1, colIndex:I
    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 51
    .local v5, mdueMillis:J
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 52
    .local v10, tempTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 53
    .local v7, now:J
    invoke-virtual {v10, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 54
    iget-wide v13, v10, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v7, v8, v13, v14}, Lcom/android/task/Utils;->getJulianDay(JJ)I

    move-result v11

    .line 55
    .local v11, today:I
    invoke-virtual {v10, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 56
    iget-wide v13, v10, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v13, v14}, Lcom/android/task/Utils;->getJulianDay(JJ)I

    move-result v3

    .line 57
    .local v3, dueDay:I
    const/4 v2, 0x0

    .line 59
    .local v2, dday:I
    if-lt v3, v11, :cond_2e

    .line 60
    sub-int v2, v3, v11

    .line 63
    :cond_2e
    const/4 v12, 0x4

    .line 65
    .local v12, wt:I
    const/16 v13, 0x9

    if-le v2, v13, :cond_5c

    const/16 v13, 0x64

    if-ge v2, v13, :cond_5c

    .line 66
    const/4 v12, 0x3

    .line 73
    :cond_38
    :goto_38
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_6c

    .line 74
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v9, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v9, params:Landroid/widget/LinearLayout$LayoutParams;
    const v4, 0x3fe66666

    .line 80
    .local v4, ff:F
    int-to-float v13, v12

    const v14, 0x3ea8f5c3

    mul-float/2addr v13, v14

    add-float/2addr v13, v4

    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 82
    const v13, 0x7f0c0038

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    :goto_5b
    return-void

    .line 68
    .end local v4           #ff:F
    .end local v9           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5c
    const/16 v13, 0x63

    if-le v2, v13, :cond_66

    const/16 v13, 0x3e8

    if-ge v2, v13, :cond_66

    .line 69
    const/4 v12, 0x2

    goto :goto_38

    .line 71
    :cond_66
    const/16 v13, 0x3e7

    if-le v2, v13, :cond_38

    const/4 v12, 0x1

    goto :goto_38

    .line 85
    :cond_6c
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v9, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    .restart local v9       #params:Landroid/widget/LinearLayout$LayoutParams;
    const v4, 0x40266666

    .line 91
    .restart local v4       #ff:F
    int-to-float v13, v12

    const v14, 0x3ef0a3d7

    mul-float/2addr v13, v14

    add-float/2addr v13, v4

    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 93
    const v13, 0x7f0c0038

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5b
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f0c0009

    const/4 v3, 0x1

    const/4 v6, 0x0

    const v11, 0x7f0c0039

    .line 104
    iget-boolean v7, p0, Lcom/android/task/TaskMainListAdapter;->mDataValid:Z

    if-nez v7, :cond_14

    .line 105
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "this should only be called when the cursor is valid"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 108
    :cond_14
    iget-object v7, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-nez v7, :cond_35

    .line 109
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

    .line 113
    :cond_35
    if-nez p2, :cond_a9

    .line 114
    iget-object v7, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v7, v8, p3}, Lcom/android/task/TaskMainListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 120
    .local v5, v:Landroid/view/View;
    :goto_3f
    iget-object v7, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v3, :cond_ab

    .line 123
    .local v3, isport:Z
    :goto_4d
    iget-object v7, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->density:F

    .line 124
    .local v4, scale:F
    const/high16 v7, 0x4110

    div-float v0, v7, v4

    .line 125
    .local v0, fdip:F
    iget-object v7, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090016

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 126
    .local v1, fhigh:F
    iget-object v7, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 129
    .local v2, fwidth:F
    if-nez p1, :cond_b8

    .line 130
    if-eqz v3, :cond_ad

    .line 131
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f02001c

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 136
    :goto_85
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v9, v2

    sub-float v10, v1, v0

    float-to-int v10, v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :goto_9c
    iget-object v6, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/task/TaskMainListAdapter;->chageWeight(ZLandroid/view/View;Landroid/database/Cursor;)V

    .line 152
    iget-object v6, p0, Lcom/android/task/TaskBaseListAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/task/TaskBaseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/task/TaskMainListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 156
    return-object v5

    .line 116
    .end local v0           #fdip:F
    .end local v1           #fhigh:F
    .end local v2           #fwidth:F
    .end local v3           #isport:Z
    .end local v4           #scale:F
    .end local v5           #v:Landroid/view/View;
    :cond_a9
    move-object v5, p2

    .restart local v5       #v:Landroid/view/View;
    goto :goto_3f

    :cond_ab
    move v3, v6

    .line 120
    goto :goto_4d

    .line 133
    .restart local v0       #fdip:F
    .restart local v1       #fhigh:F
    .restart local v2       #fwidth:F
    .restart local v3       #isport:Z
    .restart local v4       #scale:F
    :cond_ad
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f020020

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_85

    .line 142
    :cond_b8
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v8, v2

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9c
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3}, Lcom/android/task/TaskBaseListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 164
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;

    invoke-direct {v0}, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;-><init>()V

    .line 165
    .local v0, cache:Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;
    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->accountColorBar:Landroid/view/View;

    .line 166
    const v2, 0x7f0c000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->subject:Landroid/widget/TextView;

    .line 167
    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->dueDate:Landroid/widget/TextView;

    .line 168
    const v2, 0x7f0c003e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->reminder:Landroid/widget/ImageView;

    .line 169
    const v2, 0x7f0c003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->priority:Landroid/widget/ImageView;

    .line 170
    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->dDay:Landroid/widget/TextView;

    .line 171
    const v2, 0x7f0c003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->checkBox:Landroid/widget/CheckBox;

    .line 172
    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->taskListCompleteImage:Landroid/view/View;

    .line 173
    const v2, 0x7f0c003d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/task/TaskBaseListAdapter$TaskListItemCache;->reminderDdayContainer:Landroid/view/View;

    .line 175
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 177
    return-object v1
.end method

.method protected onContentChanged()V
    .registers 3

    .prologue
    .line 194
    const-string v0, "TaskMainListAdapter"

    const-string v1, "======== onContentChanged ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-super {p0}, Lcom/android/task/TaskBaseListAdapter;->onContentChanged()V

    .line 196
    return-void
.end method
