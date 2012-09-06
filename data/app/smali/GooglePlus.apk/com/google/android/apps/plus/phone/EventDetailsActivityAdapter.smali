.class public Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "EventDetailsActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter$ViewUseListener;
    }
.end annotation


# static fields
.field private static sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;


# instance fields
.field private mActionListener:Lcom/google/android/apps/plus/views/EventActionListener;

.field private mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

.field private mLandscape:Z

.field private mViewUseListener:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter$ViewUseListener;

.field private mWrapContent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter$ViewUseListener;Lcom/google/android/apps/plus/views/EventActionListener;)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "gridView"
    .parameter "viewUseListener"
    .parameter "actionListener"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, v3}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 71
    invoke-virtual {p0, v2, v2}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->addPartition(ZZ)V

    .line 72
    invoke-virtual {p0, v2, v2}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->addPartition(ZZ)V

    .line 74
    iput-object p4, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mViewUseListener:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter$ViewUseListener;

    .line 75
    iput-object p5, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mActionListener:Lcom/google/android/apps/plus/views/EventActionListener;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_6a

    move v0, v1

    :goto_1d
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mLandscape:Z

    .line 80
    sget-object v0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    if-nez v0, :cond_29

    .line 81
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/ScreenMetrics;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ScreenMetrics;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    .line 84
    :cond_29
    sget-object v0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v0, v0, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mLandscape:Z

    if-nez v0, :cond_34

    move v2, v1

    :cond_34
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mWrapContent:Z

    .line 87
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mLandscape:Z

    if-eqz v0, :cond_6c

    move v0, v1

    :goto_3b
    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setOrientation(I)V

    .line 89
    sget-object v0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v0, v0, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    if-nez v0, :cond_6e

    :goto_44
    invoke-virtual {p3, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setColumnCount(I)V

    .line 91
    sget-object v0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v0, v0, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setItemMargin(I)V

    .line 92
    sget-object v0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v0, v0, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    sget-object v1, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v1, v1, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    sget-object v2, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v2, v2, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    sget-object v3, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v3, v3, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->setPadding(IIII)V

    .line 95
    new-instance v0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter$1;-><init>(Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;)V

    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setRecyclerListener(Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;)V

    .line 103
    return-void

    :cond_6a
    move v0, v2

    .line 77
    goto :goto_1d

    :cond_6c
    move v0, v3

    .line 87
    goto :goto_3b

    :cond_6e
    move v1, v3

    .line 89
    goto :goto_44
.end method

.method private bind(Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;Landroid/database/Cursor;)V
    .registers 10
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 198
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 199
    .local v1, type:I
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 200
    .local v2, timestamp:J
    sget-object v0, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_COALESCED_FRAME_JSON:Lcom/google/android/apps/plus/json/EsJson;

    const/4 v4, 0x5

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/json/EsJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;

    .line 202
    .local v6, frame:Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;
    iget-object v4, v6, Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;->people:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mActionListener:Lcom/google/android/apps/plus/views/EventActionListener;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->bind(IJLjava/util/List;Lcom/google/android/apps/plus/views/EventActionListener;)V

    .line 203
    return-void
.end method

.method private bind(Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;Landroid/database/Cursor;)V
    .registers 11
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 212
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, avatarGaiaId:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, ownerName:Ljava/lang/String;
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, url:Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 216
    .local v6, bytes:[B
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 217
    .local v3, timestamp:J
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mActionListener:Lcom/google/android/apps/plus/views/EventActionListener;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;->bind(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[BLcom/google/android/apps/plus/views/EventActionListener;)V

    .line 218
    return-void
.end method

.method private bind(Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;Landroid/database/Cursor;)V
    .registers 6
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 227
    new-instance v0, Lcom/google/android/apps/plus/views/EventUpdate;

    invoke-direct {v0}, Lcom/google/android/apps/plus/views/EventUpdate;-><init>()V

    .line 228
    .local v0, update:Lcom/google/android/apps/plus/views/EventUpdate;
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/views/EventUpdate;->gaiaId:Ljava/lang/String;

    .line 229
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/views/EventUpdate;->ownerName:Ljava/lang/String;

    .line 230
    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/apps/plus/views/EventUpdate;->timestamp:J

    .line 231
    const/4 v1, 0x7

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/views/EventUpdate;->comment:Ljava/lang/String;

    .line 232
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mActionListener:Lcom/google/android/apps/plus/views/EventActionListener;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mWrapContent:Z

    if-nez v1, :cond_2c

    const/4 v1, 0x1

    :goto_28
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;->bind(Lcom/google/android/apps/plus/views/EventUpdate;Lcom/google/android/apps/plus/views/EventActionListener;Z)V

    .line 233
    return-void

    .line 232
    :cond_2c
    const/4 v1, 0x0

    goto :goto_28
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .registers 12
    .parameter "v"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    .line 149
    packed-switch p2, :pswitch_data_46

    .line 189
    :cond_4
    :goto_4
    return-void

    :pswitch_5
    move-object v0, p1

    .line 151
    check-cast v0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;

    .line 152
    .local v0, detailsLayout:Lcom/google/android/apps/plus/views/EventDetailsCardLayout;
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 154
    .local v2, eventData:[B
    invoke-static {}, Lcom/google/api/services/plusi/model/PlusEventJson;->getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/api/services/plusi/model/PlusEventJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/plusi/model/PlusEvent;

    .line 156
    .local v1, event:Lcom/google/api/services/plusi/model/PlusEvent;
    if-eqz v1, :cond_4

    .line 157
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mActionListener:Lcom/google/android/apps/plus/views/EventActionListener;

    invoke-virtual {v0, v1, v5, v6}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->bind(Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/fragments/EventActiveState;Lcom/google/android/apps/plus/views/EventActionListener;)V

    goto :goto_4

    .line 162
    .end local v0           #detailsLayout:Lcom/google/android/apps/plus/views/EventDetailsCardLayout;
    .end local v1           #event:Lcom/google/api/services/plusi/model/PlusEvent;
    .end local v2           #eventData:[B
    :pswitch_20
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 164
    .local v3, type:I
    sparse-switch v3, :sswitch_data_4e

    .line 185
    :goto_27
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mViewUseListener:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter$ViewUseListener;

    if-eqz v5, :cond_4

    .line 186
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mViewUseListener:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter$ViewUseListener;

    invoke-interface {v5, p4}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter$ViewUseListener;->onViewUsed(I)V

    goto :goto_4

    :sswitch_31
    move-object v4, p1

    .line 166
    check-cast v4, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;

    .line 167
    .local v4, view:Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;
    invoke-direct {p0, v4, p3}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->bind(Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;Landroid/database/Cursor;)V

    goto :goto_27

    .end local v4           #view:Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;
    :sswitch_38
    move-object v4, p1

    .line 171
    check-cast v4, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;

    .line 172
    .local v4, view:Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;
    invoke-direct {p0, v4, p3}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->bind(Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;Landroid/database/Cursor;)V

    goto :goto_27

    .end local v4           #view:Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;
    :sswitch_3f
    move-object v4, p1

    .line 179
    check-cast v4, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;

    .line 180
    .local v4, view:Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;
    invoke-direct {p0, v4, p3}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->bind(Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;Landroid/database/Cursor;)V

    goto :goto_27

    .line 149
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_5
        :pswitch_20
    .end packed-switch

    .line 164
    :sswitch_data_4e
    .sparse-switch
        0x1 -> :sswitch_3f
        0x2 -> :sswitch_3f
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_3f
        0x5 -> :sswitch_31
        0x64 -> :sswitch_38
    .end sparse-switch
.end method

.method public changeActivityCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 241
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 242
    return-void
.end method

.method public changeInfoCursor(Landroid/database/Cursor;Lcom/google/android/apps/plus/fragments/EventActiveState;)V
    .registers 4
    .parameter "cursor"
    .parameter "eventState"

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 237
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    .line 238
    return-void
.end method

.method protected getItemViewType(II)I
    .registers 8
    .parameter "partition"
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    .line 251
    const/4 v3, 0x0

    .line 253
    .local v3, viewType:I
    packed-switch p1, :pswitch_data_22

    .line 281
    :goto_5
    return v3

    .line 255
    :pswitch_6
    const/4 v3, 0x0

    .line 256
    goto :goto_5

    .line 258
    :pswitch_8
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 259
    .local v1, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->getOffsetInPartition(I)I

    move-result v2

    .line 260
    .local v2, offset:I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 261
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 263
    .local v0, activityType:I
    sparse-switch v0, :sswitch_data_2a

    goto :goto_5

    .line 274
    :sswitch_1b
    const/4 v3, 0x3

    goto :goto_5

    .line 265
    :sswitch_1d
    const/4 v3, 0x2

    .line 266
    goto :goto_5

    .line 268
    :sswitch_1f
    const/4 v3, 0x1

    .line 269
    goto :goto_5

    .line 253
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 263
    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_1b
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_1b
        0x4 -> :sswitch_1b
        0x5 -> :sswitch_1d
        0x64 -> :sswitch_1f
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 246
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public isWrapContentEnabled()Z
    .registers 2

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mWrapContent:Z

    return v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, returnView:Landroid/view/View;
    packed-switch p2, :pswitch_data_40

    .line 144
    :cond_6
    :goto_6
    return-object v0

    .line 112
    :pswitch_7
    new-instance v0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;

    .end local v0           #returnView:Landroid/view/View;
    invoke-direct {v0, p1}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;-><init>(Landroid/content/Context;)V

    .line 113
    .restart local v0       #returnView:Landroid/view/View;
    goto :goto_6

    .line 115
    :pswitch_d
    const/4 v2, 0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 116
    .local v1, type:I
    sparse-switch v1, :sswitch_data_48

    goto :goto_6

    .line 132
    :sswitch_16
    new-instance v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;

    .end local v0           #returnView:Landroid/view/View;
    invoke-direct {v0, p1}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;-><init>(Landroid/content/Context;)V

    .line 134
    .restart local v0       #returnView:Landroid/view/View;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mWrapContent:Z

    if-eqz v2, :cond_6

    .line 135
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 118
    :sswitch_28
    new-instance v0, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;

    .end local v0           #returnView:Landroid/view/View;
    invoke-direct {v0, p1}, Lcom/google/android/apps/plus/views/EventActivityUpdateCardLayout;-><init>(Landroid/content/Context;)V

    .line 120
    .restart local v0       #returnView:Landroid/view/View;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->mWrapContent:Z

    if-eqz v2, :cond_6

    .line 121
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 126
    :sswitch_3a
    new-instance v0, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;

    .end local v0           #returnView:Landroid/view/View;
    invoke-direct {v0, p1}, Lcom/google/android/apps/plus/views/EventActivityPhotoCardLayout;-><init>(Landroid/content/Context;)V

    .line 127
    .restart local v0       #returnView:Landroid/view/View;
    goto :goto_6

    .line 110
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_7
        :pswitch_d
    .end packed-switch

    .line 116
    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_16
        0x3 -> :sswitch_16
        0x4 -> :sswitch_16
        0x5 -> :sswitch_28
        0x64 -> :sswitch_3a
    .end sparse-switch
.end method
