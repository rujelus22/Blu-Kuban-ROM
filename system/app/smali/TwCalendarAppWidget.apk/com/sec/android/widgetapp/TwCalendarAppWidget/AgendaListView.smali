.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;
.super Landroid/widget/ListView;
.source "AgendaListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$1;,
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;
    }
.end annotation


# instance fields
.field private mAgendaActivity:Landroid/app/Activity;

.field private mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

.field public mNoEventContainer:Landroid/view/View;

.field public mNoEventDate:Landroid/widget/TextView;

.field private mPosition:I

.field mWindowAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mPosition:I

    .line 72
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private shiftPosition(I)V
    .registers 7
    .parameter "offset"

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->getFirstVisibleView()Landroid/view/View;

    move-result-object v0

    .line 305
    .local v0, firstVisibleItem:Landroid/view/View;
    if-eqz v0, :cond_22

    .line 306
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 307
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 310
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 311
    .local v1, position:I
    add-int v4, v1, p1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-lez v3, :cond_1f

    iget v3, v2, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    :goto_1b
    invoke-virtual {p0, v4, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setSelectionFromTop(II)V

    .line 332
    .end local v1           #position:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_1e
    :goto_1e
    return-void

    .line 311
    .restart local v1       #position:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_1f
    iget v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_1b

    .line 326
    .end local v1           #position:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_22
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_1e

    .line 330
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->getSelectedItemPosition()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setSelection(I)V

    goto :goto_1e
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    const/high16 v5, 0x40a0

    const/4 v4, 0x0

    .line 352
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 353
    .local v0, path:Landroid/graphics/Path;
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 354
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 355
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 357
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 359
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 360
    return-void
.end method

.method public getFirstVisibleView()Landroid/view/View;
    .registers 6

    .prologue
    .line 252
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 253
    .local v3, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->getChildCount()I

    move-result v0

    .line 254
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_1b

    .line 255
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 256
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 257
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_18

    .line 261
    .end local v2           #listItem:Landroid/view/View;
    :goto_17
    return-object v2

    .line 254
    .restart local v2       #listItem:Landroid/view/View;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 261
    .end local v2           #listItem:Landroid/view/View;
    :cond_1b
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .registers 4
    .parameter "time"
    .parameter "forced"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mWindowAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;Z)V

    .line 215
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mAgendaActivity:Landroid/app/Activity;

    .line 78
    invoke-virtual {p0, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setDividerHeight(I)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setItemsCanFocus(Z)V

    .line 84
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setCacheColorHint(I)V

    .line 86
    const v1, 0x7f02000d

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setSelector(I)V

    .line 88
    new-instance v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    check-cast p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    .end local p1
    invoke-direct {v1, p1, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mWindowAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    .line 89
    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 90
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setFadingEdgeLength(I)V

    .line 91
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 115
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
    .line 123
    .local p1, a:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v11, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mWindowAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->getEventByPosition(I)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;

    move-result-object v7

    .line 124
    .local v7, event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;
    if-eqz v7, :cond_14

    .line 125
    iget-object v11, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mWindowAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v3

    .line 127
    .local v3, dai:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    if-nez v3, :cond_15

    .line 211
    .end local v3           #dai:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    :cond_14
    :goto_14
    return-void

    .line 132
    .restart local v3       #dai:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    :cond_15
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v12, v7, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;->id:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 133
    .local v10, uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v8, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 135
    .local v8, intent:Landroid/content/Intent;
    iget-wide v1, v7, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;->begin:J

    .line 136
    .local v1, begin:J
    iget-wide v5, v7, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;->end:J

    .line 137
    .local v5, end:J
    const-wide/16 v11, 0x0

    cmp-long v11, v5, v11

    if-nez v11, :cond_40

    .line 138
    iget-object v11, v7, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;->duration:Ljava/lang/String;

    if-eqz v11, :cond_5a

    .line 139
    new-instance v9, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Duration;

    invoke-direct {v9}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Duration;-><init>()V

    .line 141
    .local v9, parser:Lcom/sec/android/widgetapp/TwCalendarAppWidget/Duration;
    :try_start_37
    iget-object v11, v7, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;->duration:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Duration;->parse(Ljava/lang/String;)V
    :try_end_3c
    .catch Lcom/sec/android/widgetapp/TwCalendarAppWidget/DateException; {:try_start_37 .. :try_end_3c} :catch_55

    .line 145
    :goto_3c
    invoke-virtual {v9, v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Duration;->addTo(J)J

    move-result-wide v5

    .line 151
    .end local v9           #parser:Lcom/sec/android/widgetapp/TwCalendarAppWidget/Duration;
    :cond_40
    :goto_40
    const/high16 v11, 0x1420

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    const-string v11, "beginTime"

    invoke-virtual {v8, v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 155
    const-string v11, "endTime"

    invoke-virtual {v8, v11, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 156
    iget-object v11, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mAgendaActivity:Landroid/app/Activity;

    invoke-virtual {v11, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_14

    .line 142
    .restart local v9       #parser:Lcom/sec/android/widgetapp/TwCalendarAppWidget/Duration;
    :catch_55
    move-exception v4

    .line 143
    .local v4, e:Lcom/sec/android/widgetapp/TwCalendarAppWidget/DateException;
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/DateException;->printStackTrace()V

    goto :goto_3c

    .line 147
    .end local v4           #e:Lcom/sec/android/widgetapp/TwCalendarAppWidget/DateException;
    .end local v9           #parser:Lcom/sec/android/widgetapp/TwCalendarAppWidget/Duration;
    :cond_5a
    move-wide v5, v1

    goto :goto_40
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 435
    move-object v0, p1

    check-cast v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;

    .line 437
    .local v0, ss:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 439
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mWindowAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    iget v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;->allChecked:I

    if-ne v1, v2, :cond_29

    move v1, v2

    :goto_13
    iput-boolean v1, v4, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAllChecked:Z

    .line 440
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mWindowAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    iget v4, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;->beforeTodayChecked:I

    if-ne v4, v2, :cond_2b

    :goto_1b
    iput-boolean v2, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mBeforeTodayChecked:Z

    .line 442
    iget-object v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;->checkedIds:Ljava/util/HashMap;

    if-eqz v1, :cond_28

    .line 443
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mWindowAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;->checkedIds:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->setCheckIds(Ljava/util/HashMap;)V

    .line 445
    :cond_28
    return-void

    :cond_29
    move v1, v3

    .line 439
    goto :goto_13

    :cond_2b
    move v2, v3

    .line 440
    goto :goto_1b
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 421
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 423
    .local v3, superState:Landroid/os/Parcelable;
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mWindowAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->getAllChecked()Z

    move-result v6

    if-eqz v6, :cond_24

    move v0, v4

    .line 424
    .local v0, allChecked:I
    :goto_f
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mWindowAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->getBeforeTodayChecked()Z

    move-result v6

    if-eqz v6, :cond_26

    move v1, v4

    .line 425
    .local v1, beforeTodayChecked:I
    :goto_18
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mWindowAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v2

    .line 427
    .local v2, checkedIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    new-instance v4, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;-><init>(Landroid/os/Parcelable;IILjava/util/HashMap;)V

    return-object v4

    .end local v0           #allChecked:I
    .end local v1           #beforeTodayChecked:I
    .end local v2           #checkedIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_24
    move v0, v5

    .line 423
    goto :goto_f

    .restart local v0       #allChecked:I
    :cond_26
    move v1, v5

    .line 424
    goto :goto_18
.end method

.method setEventLoader(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)V
    .registers 2
    .parameter "eventLoader"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    .line 449
    return-void
.end method

.method public setHideDeclinedEvents(Z)V
    .registers 3
    .parameter "hideDeclined"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mWindowAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->setHideDeclinedEvents(Z)V

    .line 336
    return-void
.end method

.method public setNotificationMoment(Z)V
    .registers 3
    .parameter "notificationMoment"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mWindowAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->setNotificationMoment(Z)V

    .line 340
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/widget/TextView;)V
    .registers 3
    .parameter "noEventContainer"
    .parameter "date"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mNoEventContainer:Landroid/view/View;

    .line 109
    iput-object p2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mNoEventDate:Landroid/widget/TextView;

    .line 110
    return-void
.end method

.method public shiftSelection(I)V
    .registers 5
    .parameter "offset"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->shiftPosition(I)V

    .line 292
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->getSelectedItemPosition()I

    move-result v0

    .line 293
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 294
    add-int v1, v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setSelectionFromTop(II)V

    .line 296
    :cond_10
    return-void
.end method
