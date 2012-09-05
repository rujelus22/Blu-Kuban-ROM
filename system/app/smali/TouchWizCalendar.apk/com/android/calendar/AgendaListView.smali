.class public Lcom/android/calendar/AgendaListView;
.super Landroid/widget/ListView;
.source "AgendaListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/calendar/AgendaInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaListView$SavedCheckState;
    }
.end annotation


# instance fields
.field private mAgendaActivity:Landroid/app/Activity;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mScaleBegan:Z

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AgendaListView;->mUpdateTZ:Ljava/lang/Runnable;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/AgendaListView;->mScaleBegan:Z

    .line 70
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaListView;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/AgendaListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/calendar/AgendaListView;->mScaleBegan:Z

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 74
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/calendar/AgendaListView;->mAgendaActivity:Landroid/app/Activity;

    .line 76
    invoke-virtual {p0, p0}, Lcom/android/calendar/AgendaListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaListView;->setChoiceMode(I)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaListView;->setFadingEdgeLength(I)V

    .line 81
    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaListView;->setCacheColorHint(I)V

    .line 82
    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0, p0}, Lcom/android/calendar/AgendaWindowAdapter;-><init>(Landroid/app/Activity;Lcom/android/calendar/AgendaListView;)V

    iput-object v1, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    .line 84
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-direct {v0, p1, v2}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/AgendaListView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 92
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/AgendaListView$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/AgendaListView$1;-><init>(Lcom/android/calendar/AgendaListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaListView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 116
    return-void
.end method

.method private shiftPosition(I)V
    .registers 7
    .parameter "offset"

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getFirstVisibleView()Landroid/view/View;

    move-result-object v0

    .line 288
    .local v0, firstVisibleItem:Landroid/view/View;
    if-eqz v0, :cond_22

    .line 289
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 290
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 294
    .local v1, position:I
    add-int v4, v1, p1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-lez v3, :cond_1f

    iget v3, v2, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    :goto_1b
    invoke-virtual {p0, v4, v3}, Lcom/android/calendar/AgendaListView;->setSelectionFromTop(II)V

    .line 315
    .end local v1           #position:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_1e
    :goto_1e
    return-void

    .line 294
    .restart local v1       #position:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_1f
    iget v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_1b

    .line 309
    .end local v1           #position:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_22
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_1e

    .line 313
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lcom/android/calendar/AgendaListView;->setSelection(I)V

    goto :goto_1e
.end method


# virtual methods
.method public getFirstVisibleTime()J
    .registers 5

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getFirstVisiblePosition()I

    move-result v1

    .line 264
    .local v1, position:I
    iget-object v2, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v2, v1}, Lcom/android/calendar/AgendaWindowAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 265
    .local v0, event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v0, :cond_f

    .line 266
    iget-wide v2, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 268
    :goto_e
    return-wide v2

    :cond_f
    const-wide/16 v2, 0x0

    goto :goto_e
.end method

.method public getFirstVisibleView()Landroid/view/View;
    .registers 6

    .prologue
    .line 235
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 236
    .local v3, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getChildCount()I

    move-result v0

    .line 237
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_1b

    .line 238
    invoke-virtual {p0, v1}, Lcom/android/calendar/AgendaListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 239
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 240
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_18

    .line 244
    .end local v2           #listItem:Landroid/view/View;
    :goto_17
    return-object v2

    .line 237
    .restart local v2       #listItem:Landroid/view/View;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 244
    .end local v2           #listItem:Landroid/view/View;
    :cond_1b
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public getSelectedTime()J
    .registers 5

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v1

    .line 249
    .local v1, position:I
    if-ltz v1, :cond_11

    .line 250
    iget-object v2, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v2, v1}, Lcom/android/calendar/AgendaWindowAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 251
    .local v0, event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v0, :cond_11

    .line 252
    iget-wide v2, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 255
    .end local v0           #event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    :goto_10
    return-wide v2

    :cond_11
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v2

    goto :goto_10
.end method

.method public getWindowAdapter()Lcom/android/calendar/AgendaWindowAdapter;
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    return-object v0
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .registers 4
    .parameter "time"
    .parameter "forced"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;Z)V

    .line 195
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 136
    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->close()V

    .line 137
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 20
    .parameter
    .parameter "v"
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
    .line 144
    .local p1, a:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v11, p0, Lcom/android/calendar/AgendaListView;->mAgendaActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, action:Ljava/lang/String;
    if-eqz v1, :cond_14

    const-string v11, "android.intent.action.PICK"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    :cond_14
    iget-object v11, p0, Lcom/android/calendar/AgendaListView;->mAgendaActivity:Landroid/app/Activity;

    instance-of v11, v11, Lcom/android/calendar/AgendaDeleteActivity;

    if-eqz v11, :cond_28

    .line 149
    :cond_1a
    iget-object v11, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaListView;->isItemChecked(I)Z

    move-result v12

    move/from16 v0, p3

    invoke-virtual {v11, v0, v12}, Lcom/android/calendar/AgendaWindowAdapter;->setChecked(IZ)V

    .line 191
    :cond_27
    :goto_27
    return-void

    .line 151
    :cond_28
    iget-object v11, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/android/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v7

    .line 152
    .local v7, event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v7, :cond_27

    .line 153
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v12, v7, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 154
    .local v10, uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v8, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    .local v8, intent:Landroid/content/Intent;
    iget-wide v2, v7, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 160
    .local v2, begin:J
    iget-wide v5, v7, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->end:J

    .line 161
    .local v5, end:J
    const-wide/16 v11, 0x0

    cmp-long v11, v5, v11

    if-nez v11, :cond_5d

    .line 162
    iget-object v11, v7, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->duration:Ljava/lang/String;

    if-eqz v11, :cond_72

    .line 163
    new-instance v9, Lcom/android/calendar/vcal/pim/vcalendar/Duration;

    invoke-direct {v9}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;-><init>()V

    .line 165
    .local v9, parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :try_start_54
    iget-object v11, v7, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->duration:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_59
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_54 .. :try_end_59} :catch_6d

    .line 169
    :goto_59
    invoke-virtual {v9, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->addTo(J)J

    move-result-wide v5

    .line 175
    .end local v9           #parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :cond_5d
    :goto_5d
    const-string v11, "beginTime"

    invoke-virtual {v8, v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 176
    const-string v11, "endTime"

    invoke-virtual {v8, v11, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 187
    iget-object v11, p0, Lcom/android/calendar/AgendaListView;->mAgendaActivity:Landroid/app/Activity;

    invoke-virtual {v11, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_27

    .line 166
    .restart local v9       #parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :catch_6d
    move-exception v4

    .line 167
    .local v4, e:Lcom/android/calendar/vcal/pim/vcalendar/DateException;
    invoke-virtual {v4}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;->printStackTrace()V

    goto :goto_59

    .line 171
    .end local v4           #e:Lcom/android/calendar/vcal/pim/vcalendar/DateException;
    .end local v9           #parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :cond_72
    move-wide v5, v2

    goto :goto_5d
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 421
    const/4 v2, 0x1

    invoke-super {p0, v2}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 422
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 423
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_11

    .line 424
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 425
    .local v0, handled:Z
    if-eqz v0, :cond_11

    .line 428
    .end local v0           #handled:Z
    :goto_10
    return v0

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_10
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 432
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_d

    .line 433
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 434
    .local v0, handled:Z
    if-eqz v0, :cond_d

    .line 437
    .end local v0           #handled:Z
    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetInvalidated()V

    .line 329
    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->stopImageLoaderThread()V

    .line 330
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 408
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/AgendaListView$SavedCheckState;

    .line 410
    .local v0, ss:Lcom/android/calendar/AgendaListView$SavedCheckState;
    invoke-virtual {v0}, Lcom/android/calendar/AgendaListView$SavedCheckState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 412
    iget-object v4, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    iget v1, v0, Lcom/android/calendar/AgendaListView$SavedCheckState;->allChecked:I

    if-ne v1, v2, :cond_29

    move v1, v2

    :goto_13
    iput-boolean v1, v4, Lcom/android/calendar/AgendaWindowAdapter;->mAllChecked:Z

    .line 413
    iget-object v1, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    iget v4, v0, Lcom/android/calendar/AgendaListView$SavedCheckState;->beforeTodayChecked:I

    if-ne v4, v2, :cond_2b

    :goto_1b
    iput-boolean v2, v1, Lcom/android/calendar/AgendaWindowAdapter;->mBeforeTodayChecked:Z

    .line 415
    iget-object v1, v0, Lcom/android/calendar/AgendaListView$SavedCheckState;->checkedIds:Ljava/util/HashMap;

    if-eqz v1, :cond_28

    .line 416
    iget-object v1, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    iget-object v2, v0, Lcom/android/calendar/AgendaListView$SavedCheckState;->checkedIds:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaWindowAdapter;->setCheckIds(Ljava/util/HashMap;)V

    .line 418
    :cond_28
    return-void

    :cond_29
    move v1, v3

    .line 412
    goto :goto_13

    :cond_2b
    move v2, v3

    .line 413
    goto :goto_1b
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 323
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 392
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 394
    .local v3, superState:Landroid/os/Parcelable;
    iget-object v6, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v6}, Lcom/android/calendar/AgendaWindowAdapter;->getAllChecked()Z

    move-result v6

    if-eqz v6, :cond_24

    move v0, v4

    .line 395
    .local v0, allChecked:I
    :goto_f
    iget-object v6, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v6}, Lcom/android/calendar/AgendaWindowAdapter;->getBeforeTodayChecked()Z

    move-result v6

    if-eqz v6, :cond_26

    move v1, v4

    .line 396
    .local v1, beforeTodayChecked:I
    :goto_18
    iget-object v4, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v2

    .line 398
    .local v2, checkedIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    new-instance v4, Lcom/android/calendar/AgendaListView$SavedCheckState;

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/android/calendar/AgendaListView$SavedCheckState;-><init>(Landroid/os/Parcelable;IILjava/util/HashMap;)V

    return-object v4

    .end local v0           #allChecked:I
    .end local v1           #beforeTodayChecked:I
    .end local v2           #checkedIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_24
    move v0, v5

    .line 394
    goto :goto_f

    .restart local v0       #allChecked:I
    :cond_26
    move v1, v5

    .line 395
    goto :goto_18
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 121
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public refresh(Z)V
    .registers 7
    .parameter "forced"

    .prologue
    .line 198
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/AgendaListView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/calendar/AgendaListView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 199
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v0

    .line 200
    .local v0, goToTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1b

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 203
    :cond_1b
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 204
    iget-object v3, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v3, v2, p1}, Lcom/android/calendar/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;Z)V

    .line 205
    return-void
.end method

.method public setHideDeclinedEvents(Z)V
    .registers 3
    .parameter "hideDeclined"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->setHideDeclinedEvents(Z)V

    .line 319
    return-void
.end method

.method public shiftSelection(I)V
    .registers 5
    .parameter "offset"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaListView;->shiftPosition(I)V

    .line 275
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v0

    .line 276
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 277
    add-int v1, v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/AgendaListView;->setSelectionFromTop(II)V

    .line 279
    :cond_10
    return-void
.end method
