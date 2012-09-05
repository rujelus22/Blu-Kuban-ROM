.class public Lcom/android/calendar/AgendaExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "AgendaExpandableListView.java"

# interfaces
.implements Lcom/android/calendar/AgendaInterface;


# instance fields
.field private mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

.field private mAgendaActivity:Landroid/app/Activity;

.field private mAllCollapsed:Z

.field private mAllExpanded:Z

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mUpdateTZ:Ljava/lang/Runnable;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllExpanded:Z

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllCollapsed:Z

    .line 71
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaExpandableListView;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/AgendaExpandableListView;)Lcom/android/calendar/AgendaExpandableListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/AgendaExpandableListView;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAgendaActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/AgendaExpandableListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllExpanded:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/calendar/AgendaExpandableListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllCollapsed:Z

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 75
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAgendaActivity:Landroid/app/Activity;

    .line 76
    new-instance v0, Lcom/android/calendar/AgendaExpandableListAdapter;

    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-direct {v0, p1, p0}, Lcom/android/calendar/AgendaExpandableListAdapter;-><init>(Landroid/app/Activity;Lcom/android/calendar/AgendaExpandableListView;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    .line 79
    invoke-virtual {p0, v3}, Lcom/android/calendar/AgendaExpandableListView;->setFadingEdgeLength(I)V

    .line 80
    invoke-virtual {p0, v3}, Lcom/android/calendar/AgendaExpandableListView;->setCacheColorHint(I)V

    .line 83
    new-instance v0, Lcom/android/calendar/AgendaExpandableListView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AgendaExpandableListView$1;-><init>(Lcom/android/calendar/AgendaExpandableListView;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 117
    new-instance v0, Lcom/android/calendar/AgendaExpandableListView$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/AgendaExpandableListView$2;-><init>(Lcom/android/calendar/AgendaExpandableListView;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 149
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/AgendaExpandableListView$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/AgendaExpandableListView$3;-><init>(Lcom/android/calendar/AgendaExpandableListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllExpanded:Z

    .line 177
    iput-boolean v3, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllCollapsed:Z

    .line 178
    return-void
.end method

.method private shiftPosition(I)V
    .registers 9
    .parameter "offset"

    .prologue
    .line 264
    const-string v4, "AgendaExpandableListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shifting position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getFirstVisibleView()Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, firstVisibleItem:Landroid/view/View;
    if-eqz v0, :cond_da

    .line 270
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 271
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaExpandableListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 275
    .local v1, position:I
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_75

    iget v4, v2, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    :goto_31
    invoke-virtual {p0, v1, v4}, Lcom/android/calendar/AgendaExpandableListView;->setSelectionFromTop(II)V

    .line 278
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    if-eqz v4, :cond_78

    .line 279
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    .line 280
    .local v3, viewHolder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    const-string v4, "AgendaExpandableListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shifting from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Title "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v1           #position:I
    .end local v2           #r:Landroid/graphics/Rect;
    .end local v3           #viewHolder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    :cond_74
    :goto_74
    return-void

    .line 275
    .restart local v1       #position:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_75
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_31

    .line 282
    :cond_78
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;

    if-eqz v4, :cond_b9

    .line 283
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;

    .line 285
    .local v3, viewHolder:Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    const-string v4, "AgendaExpandableListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shifting from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Date  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 287
    .end local v3           #viewHolder:Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    :cond_b9
    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_74

    .line 288
    const-string v4, "AgendaExpandableListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shifting: Looking at header here. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 291
    .end local v1           #position:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_da
    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getSelectedItemPosition()I

    move-result v4

    if-ltz v4, :cond_74

    .line 293
    const-string v4, "AgendaExpandableListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shifting selection from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getSelectedItemPosition()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p0, v4}, Lcom/android/calendar/AgendaExpandableListView;->setSelection(I)V

    goto/16 :goto_74
.end method


# virtual methods
.method public collapseList()V
    .registers 4

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/AgendaExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 197
    .local v0, groupCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_f

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/calendar/AgendaExpandableListView;->collapseGroup(I)Z

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 204
    :cond_f
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllExpanded:Z

    .line 205
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllCollapsed:Z

    .line 206
    return-void
.end method

.method public expandList()V
    .registers 4

    .prologue
    .line 182
    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/AgendaExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 183
    .local v0, groupCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_f

    .line 184
    invoke-virtual {p0, v1}, Lcom/android/calendar/AgendaExpandableListView;->expandGroup(I)Z

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 190
    :cond_f
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllExpanded:Z

    .line 191
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllCollapsed:Z

    .line 192
    return-void
.end method

.method public getAllCollapsed()Z
    .registers 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllCollapsed:Z

    return v0
.end method

.method public getAllExpanded()Z
    .registers 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAllExpanded:Z

    return v0
.end method

.method public bridge synthetic getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getExpandableListAdapter()Lcom/android/calendar/AgendaExpandableListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Lcom/android/calendar/AgendaExpandableListAdapter;
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    return-object v0
.end method

.method public getFirstVisibleTime()J
    .registers 6

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    .line 315
    .local v1, position:I
    const-string v2, "AgendaExpandableListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirstVisiblePosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v2, v1}, Lcom/android/calendar/AgendaExpandableListAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 319
    .local v0, event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v0, :cond_27

    .line 320
    iget-wide v2, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 322
    :goto_26
    return-wide v2

    :cond_27
    const-wide/16 v2, 0x0

    goto :goto_26
.end method

.method public getFirstVisibleView()Landroid/view/View;
    .registers 6

    .prologue
    .line 300
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 301
    .local v3, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getChildCount()I

    move-result v0

    .line 302
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_1b

    .line 303
    invoke-virtual {p0, v1}, Lcom/android/calendar/AgendaExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 304
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 305
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_18

    .line 309
    .end local v2           #listItem:Landroid/view/View;
    :goto_17
    return-object v2

    .line 302
    .restart local v2       #listItem:Landroid/view/View;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 309
    .end local v2           #listItem:Landroid/view/View;
    :cond_1b
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public getSelectedTime()J
    .registers 5

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getSelectedItemPosition()I

    move-result v1

    .line 327
    .local v1, position:I
    if-ltz v1, :cond_11

    .line 328
    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v2, v1}, Lcom/android/calendar/AgendaExpandableListAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 329
    .local v0, event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v0, :cond_11

    .line 330
    iget-wide v2, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 333
    .end local v0           #event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    :goto_10
    return-wide v2

    :cond_11
    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getFirstVisibleTime()J

    move-result-wide v2

    goto :goto_10
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .registers 4
    .parameter "time"
    .parameter "forced"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/AgendaExpandableListAdapter;->refresh(Landroid/text/format/Time;Z)V

    .line 235
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 342
    invoke-super {p0}, Landroid/widget/ExpandableListView;->onDetachedFromWindow()V

    .line 343
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaExpandableListAdapter;->close()V

    .line 344
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 347
    const/4 v2, 0x1

    invoke-super {p0, v2}, Landroid/widget/ExpandableListView;->setHeaderDividersEnabled(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 349
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_11

    .line 350
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 351
    .local v0, handled:Z
    if-eqz v0, :cond_11

    .line 354
    .end local v0           #handled:Z
    :goto_10
    return v0

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/widget/ExpandableListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_10
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 358
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_d

    .line 359
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 360
    .local v0, handled:Z
    if-eqz v0, :cond_d

    .line 363
    .end local v0           #handled:Z
    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1, p2}, Landroid/widget/ExpandableListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaExpandableListAdapter;->notifyDataSetInvalidated()V

    .line 249
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaExpandableListAdapter;->stopImageLoaderThread()V

    .line 250
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "ev"

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, res:Z
    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 221
    :try_start_6
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_b

    move-result v1

    .line 226
    :goto_a
    return v1

    .line 222
    :catch_b
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public refresh(Z)V
    .registers 7
    .parameter "forced"

    .prologue
    .line 238
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/AgendaExpandableListView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 239
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getFirstVisibleTime()J

    move-result-wide v0

    .line 240
    .local v0, goToTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1b

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 243
    :cond_1b
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 244
    iget-object v3, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v3, v2, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->refresh(Landroid/text/format/Time;Z)V

    .line 245
    return-void
.end method

.method public setHideDeclinedEvents(Z)V
    .registers 3
    .parameter "hideDeclined"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->setHideDeclinedEvents(Z)V

    .line 231
    return-void
.end method

.method public shiftSelection(I)V
    .registers 5
    .parameter "offset"

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaExpandableListView;->shiftPosition(I)V

    .line 256
    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 257
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 258
    add-int v1, v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/AgendaExpandableListView;->setSelectionFromTop(II)V

    .line 260
    :cond_10
    return-void
.end method
