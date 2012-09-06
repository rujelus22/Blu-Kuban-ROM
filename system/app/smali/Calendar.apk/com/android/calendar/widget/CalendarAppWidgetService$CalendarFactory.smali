.class public Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;
.super Landroid/content/BroadcastReceiver;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/CalendarAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/BroadcastReceiver;",
        "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static mCursor:Landroid/database/Cursor;

.field private static volatile mLock:Ljava/lang/Integer;

.field private static mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

.field private static sLastUpdateTime:J


# instance fields
.field private mAllDayColor:I

.field private mAppWidgetId:I

.field private mContext:Landroid/content/Context;

.field private mDeclinedColor:I

.field private mHandler:Landroid/os/Handler;

.field private mLastLock:I

.field private mLoader:Landroid/content/CursorLoader;

.field private mResources:Landroid/content/res/Resources;

.field private mStandardColor:I

.field private mTimezoneChanged:Ljava/lang/Runnable;

.field private mUpdateLoader:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 113
    const-wide/32 v0, 0x1499700

    sput-wide v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    .line 119
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 165
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$1;-><init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mTimezoneChanged:Ljava/lang/Runnable;

    .line 137
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;-><init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mUpdateLoader:Ljava/lang/Runnable;

    .line 168
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 154
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$1;-><init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mTimezoneChanged:Ljava/lang/Runnable;

    .line 137
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;-><init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mUpdateLoader:Ljava/lang/Runnable;

    .line 155
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    .line 157
    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    .line 160
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mDeclinedColor:I

    .line 161
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mStandardColor:I

    .line 162
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAllDayColor:I

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->createLoaderUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Integer;
    .registers 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 1
    .parameter "x0"

    .prologue
    .line 105
    sput-object p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLastLock:I

    return p1
.end method

.method protected static buildAppWidgetModel(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/calendar/widget/CalendarAppWidgetModel;
    .registers 4
    .parameter "context"
    .parameter "cursor"
    .parameter "timeZone"

    .prologue
    .line 402
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;

    invoke-direct {v0, p0, p2}, Lcom/android/calendar/widget/CalendarAppWidgetModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 403
    .local v0, model:Lcom/android/calendar/widget/CalendarAppWidgetModel;
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->buildFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 404
    return-object v0
.end method

.method private calculateUpdateTime(Lcom/android/calendar/widget/CalendarAppWidgetModel;JLjava/lang/String;)J
    .registers 14
    .parameter "model"
    .parameter "now"
    .parameter "timeZone"

    .prologue
    .line 412
    invoke-static {p4}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->getNextMidnightTimeMillis(Ljava/lang/String;)J

    move-result-wide v4

    .line 413
    .local v4, minUpdateTime:J
    iget-object v8, p1, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;

    .line 416
    .local v2, event:Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    iget-wide v6, v2, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    .line 417
    .local v6, start:J
    iget-wide v0, v2, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    .line 420
    .local v0, end:J
    cmp-long v8, p2, v6

    if-gez v8, :cond_23

    .line 421
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_a

    .line 422
    :cond_23
    cmp-long v8, p2, v0

    if-gez v8, :cond_a

    .line 423
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_a

    .line 426
    .end local v0           #end:J
    .end local v2           #event:Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    .end local v6           #start:J
    :cond_2c
    return-wide v4
.end method

.method private createLoaderUri()Landroid/net/Uri;
    .registers 12

    .prologue
    const-wide/32 v9, 0x5265c00

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 392
    .local v4, now:J
    sub-long v0, v4, v9

    .line 393
    .local v0, begin:J
    const-wide/32 v7, 0x240c8400

    add-long/2addr v7, v4

    add-long v2, v7, v9

    .line 395
    .local v2, end:J
    sget-object v7, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 396
    .local v6, uri:Landroid/net/Uri;
    return-object v6
.end method

.method private static getNextMidnightTimeMillis(Ljava/lang/String;)J
    .registers 9
    .parameter "timezone"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 430
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 431
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 432
    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 433
    iput v6, v4, Landroid/text/format/Time;->hour:I

    .line 434
    iput v6, v4, Landroid/text/format/Time;->minute:I

    .line 435
    iput v6, v4, Landroid/text/format/Time;->second:I

    .line 436
    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 438
    .local v0, midnightDeviceTz:J
    iput-object p0, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 439
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 440
    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 441
    iput v6, v4, Landroid/text/format/Time;->hour:I

    .line 442
    iput v6, v4, Landroid/text/format/Time;->minute:I

    .line 443
    iput v6, v4, Landroid/text/format/Time;->second:I

    .line 444
    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 446
    .local v2, midnightHomeTz:J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    return-wide v5
.end method

.method static updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V
    .registers 4
    .parameter "views"
    .parameter "id"
    .parameter "visibility"
    .parameter "string"

    .prologue
    .line 450
    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 451
    if-nez p2, :cond_8

    .line 452
    invoke-virtual {p0, p1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 454
    :cond_8
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 324
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    if-nez v1, :cond_6

    .line 327
    :goto_5
    return v0

    :cond_6
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v1, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5
.end method

.method public getItemId(I)J
    .registers 15
    .parameter "position"

    .prologue
    const/16 v12, 0x20

    .line 332
    sget-object v6, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    if-eqz v6, :cond_10

    sget-object v6, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v6, v6, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 333
    :cond_10
    const-wide/16 v3, 0x0

    .line 344
    :goto_12
    return-wide v3

    .line 335
    :cond_13
    sget-object v6, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v6, v6, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;

    .line 336
    .local v5, rowInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
    iget v6, v5, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mType:I

    if-nez v6, :cond_25

    .line 337
    iget v6, v5, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    int-to-long v3, v6

    goto :goto_12

    .line 339
    :cond_25
    sget-object v6, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v6, v6, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    iget v7, v5, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;

    .line 340
    .local v0, eventInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    const-wide/16 v1, 0x1f

    .line 341
    .local v1, prime:J
    const-wide/16 v3, 0x1

    .line 342
    .local v3, result:J
    mul-long v6, v1, v3

    iget-wide v8, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    iget-wide v10, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    ushr-long/2addr v10, v12

    xor-long/2addr v8, v10

    long-to-int v8, v8

    int-to-long v8, v8

    add-long v3, v6, v8

    .line 343
    mul-long v6, v1, v3

    iget-wide v8, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    iget-wide v10, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    ushr-long/2addr v10, v12

    xor-long/2addr v8, v10

    long-to-int v8, v8

    int-to-long v8, v8

    add-long v3, v6, v8

    .line 344
    goto :goto_12
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 4

    .prologue
    .line 191
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04000e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 193
    .local v0, views:Landroid/widget/RemoteViews;
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 22
    .parameter "position"

    .prologue
    .line 199
    if-ltz p1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->getCount()I

    move-result v1

    move/from16 v0, p1

    if-lt v0, v1, :cond_d

    .line 200
    :cond_a
    const/16 v19, 0x0

    .line 311
    :goto_c
    return-object v19

    .line 203
    :cond_d
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    if-nez v1, :cond_3a

    .line 204
    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04000e

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 206
    .local v19, views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getLaunchFillInIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v12

    .line 208
    .local v12, intent:Landroid/content/Intent;
    const v1, 0x7f10002a

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v12}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto :goto_c

    .line 212
    .end local v12           #intent:Landroid/content/Intent;
    .end local v19           #views:Landroid/widget/RemoteViews;
    :cond_3a
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v1, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v1, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 213
    :cond_4e
    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04000f

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 215
    .restart local v19       #views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getLaunchFillInIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v12

    .line 217
    .restart local v12       #intent:Landroid/content/Intent;
    const v1, 0x7f10002c

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v12}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto :goto_c

    .line 221
    .end local v12           #intent:Landroid/content/Intent;
    .end local v19           #views:Landroid/widget/RemoteViews;
    :cond_77
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v1, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;

    .line 222
    .local v16, rowInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mType:I

    if-nez v1, :cond_b6

    .line 223
    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04000d

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 225
    .restart local v19       #views:Landroid/widget/RemoteViews;
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v1, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mDayInfos:Ljava/util/List;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;

    .line 226
    .local v8, dayInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;
    const v1, 0x7f10000d

    const/4 v2, 0x0

    iget-object v3, v8, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    goto/16 :goto_c

    .line 230
    .end local v8           #dayInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;
    .end local v19           #views:Landroid/widget/RemoteViews;
    :cond_b6
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v1, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;

    .line 231
    .local v10, eventInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    iget-boolean v1, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eqz v1, :cond_19f

    .line 232
    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040032

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 237
    .restart local v19       #views:Landroid/widget/RemoteViews;
    :goto_da
    iget v1, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->color:I

    invoke-static {v1}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v9

    .line 239
    .local v9, displayColor:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 240
    .local v13, now:J
    iget-boolean v1, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-nez v1, :cond_1b3

    iget-wide v1, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    cmp-long v1, v1, v13

    if-gtz v1, :cond_1b3

    iget-wide v1, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    cmp-long v1, v13, v1

    if-gtz v1, :cond_1b3

    .line 241
    const v1, 0x7f1000a6

    const-string v2, "setBackgroundResource"

    const v3, 0x7f020001

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 248
    :goto_101
    iget-boolean v1, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-nez v1, :cond_11d

    .line 249
    const v1, 0x7f100013

    iget v2, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    iget-object v3, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 250
    const v1, 0x7f100014

    iget v2, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    iget-object v3, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 252
    :cond_11d
    const v1, 0x7f100012

    iget v2, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    iget-object v3, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 254
    const v1, 0x7f100011

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 256
    iget v0, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->selfAttendeeStatus:I

    move/from16 v17, v0

    .line 257
    .local v17, selfAttendeeStatus:I
    iget-boolean v1, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eqz v1, :cond_1e9

    .line 258
    const/4 v1, 0x3

    move/from16 v0, v17

    if-ne v0, v1, :cond_1c1

    .line 259
    const v1, 0x7f100011

    const-string v2, "setImageResource"

    const v3, 0x7f020056

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 261
    const v1, 0x7f100012

    const-string v2, "setTextColor"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 267
    :goto_156
    const/4 v1, 0x2

    move/from16 v0, v17

    if-ne v0, v1, :cond_1de

    .line 269
    const v1, 0x7f100011

    const-string v2, "setColorFilter"

    invoke-static {v9}, Lcom/android/calendar/Utils;->getDeclinedColorFromColor(I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 299
    :goto_169
    iget-wide v4, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    .line 300
    .local v4, start:J
    iget-wide v6, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    .line 302
    .local v6, end:J
    iget-boolean v1, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eqz v1, :cond_18b

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v18

    .line 304
    .local v18, tz:Ljava/lang/String;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 305
    .local v15, recycle:Landroid/text/format/Time;
    move-object/from16 v0, v18

    invoke-static {v15, v4, v5, v0}, Lcom/android/calendar/Utils;->convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v4

    .line 306
    move-object/from16 v0, v18

    invoke-static {v15, v6, v7, v0}, Lcom/android/calendar/Utils;->convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v6

    .line 308
    .end local v15           #recycle:Landroid/text/format/Time;
    .end local v18           #tz:Ljava/lang/String;
    :cond_18b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    iget-wide v2, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    invoke-static/range {v1 .. v7}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getLaunchFillInIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v11

    .line 310
    .local v11, fillInIntent:Landroid/content/Intent;
    const v1, 0x7f1000a6

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v11}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto/16 :goto_c

    .line 235
    .end local v4           #start:J
    .end local v6           #end:J
    .end local v9           #displayColor:I
    .end local v11           #fillInIntent:Landroid/content/Intent;
    .end local v13           #now:J
    .end local v17           #selfAttendeeStatus:I
    .end local v19           #views:Landroid/widget/RemoteViews;
    :cond_19f
    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040033

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v19       #views:Landroid/widget/RemoteViews;
    goto/16 :goto_da

    .line 244
    .restart local v9       #displayColor:I
    .restart local v13       #now:J
    :cond_1b3
    const v1, 0x7f1000a6

    const-string v2, "setBackgroundResource"

    const/high16 v3, 0x7f02

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_101

    .line 263
    .restart local v17       #selfAttendeeStatus:I
    :cond_1c1
    const v1, 0x7f100011

    const-string v2, "setImageResource"

    const v3, 0x7f020057

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 265
    const v1, 0x7f100012

    const-string v2, "setTextColor"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAllDayColor:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_156

    .line 272
    :cond_1de
    const v1, 0x7f100011

    const-string v2, "setColorFilter"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_169

    .line 274
    :cond_1e9
    const/4 v1, 0x2

    move/from16 v0, v17

    if-ne v0, v1, :cond_235

    .line 275
    const v1, 0x7f100012

    const-string v2, "setTextColor"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mDeclinedColor:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 276
    const v1, 0x7f100013

    const-string v2, "setTextColor"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mDeclinedColor:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 277
    const v1, 0x7f100014

    const-string v2, "setTextColor"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mDeclinedColor:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 280
    const v1, 0x7f100011

    const-string v2, "setImageResource"

    const v3, 0x7f020057

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 283
    const v1, 0x7f100011

    const-string v2, "setColorFilter"

    invoke-static {v9}, Lcom/android/calendar/Utils;->getDeclinedColorFromColor(I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_169

    .line 286
    :cond_235
    const v1, 0x7f100012

    const-string v2, "setTextColor"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mStandardColor:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 287
    const v1, 0x7f100013

    const-string v2, "setTextColor"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mStandardColor:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 288
    const v1, 0x7f100014

    const-string v2, "setTextColor"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mStandardColor:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 289
    const/4 v1, 0x3

    move/from16 v0, v17

    if-ne v0, v1, :cond_27d

    .line 290
    const v1, 0x7f100011

    const-string v2, "setImageResource"

    const v3, 0x7f020056

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 296
    :goto_271
    const v1, 0x7f100011

    const-string v2, "setColorFilter"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_169

    .line 293
    :cond_27d
    const v1, 0x7f100011

    const-string v2, "setImageResource"

    const v3, 0x7f020057

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_271
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 317
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public initLoader()V
    .registers 8

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->createLoaderUri()Landroid/net/Uri;

    move-result-object v2

    .line 373
    .local v2, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getHideDeclinedEvents(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v4, "visible=1 AND selfAttendeeStatus!=2"

    .line 375
    .local v4, selection:Ljava/lang/String;
    :goto_e
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/calendar/widget/CalendarAppWidgetService;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "startDay ASC, startMinute ASC, endDay ASC, endMinute ASC LIMIT 503"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    .line 377
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v5, v6}, Landroid/content/CursorLoader;->setUpdateThrottle(J)V

    .line 378
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 379
    :try_start_26
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLastLock:I

    .line 380
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_26 .. :try_end_3b} :catchall_4b

    .line 381
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    iget v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 382
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 384
    return-void

    .line 373
    .end local v4           #selection:Ljava/lang/String;
    :cond_48
    const-string v4, "visible=1"

    goto :goto_e

    .line 380
    .restart local v4       #selection:Ljava/lang/String;
    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->initLoader()V

    .line 173
    return-void
.end method

.method public onDataSetChanged()V
    .registers 1

    .prologue
    .line 177
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 181
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 182
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_12

    .line 185
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 187
    :cond_12
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 24
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_3

    .line 533
    :goto_2
    return-void

    .line 469
    :cond_3
    sget-object v16, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    monitor-enter v16

    .line 470
    :try_start_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLastLock:I

    sget-object v17, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    if-eq v15, v0, :cond_1c

    .line 471
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 472
    monitor-exit v16

    goto :goto_2

    .line 532
    :catchall_19
    move-exception v15

    monitor-exit v16
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v15

    .line 475
    :cond_1c
    :try_start_1c
    invoke-static/range {p2 .. p2}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v4

    .line 476
    .local v4, matrixCursor:Landroid/database/MatrixCursor;
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 479
    .local v5, now:J
    sget-object v15, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v15, :cond_30

    .line 480
    sget-object v15, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_30
    sput-object v4, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    .line 483
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mTimezoneChanged:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v12

    .line 484
    .local v12, tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    sget-object v17, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, v17

    invoke-static {v15, v0, v12}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->buildAppWidgetModel(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/calendar/widget/CalendarAppWidgetModel;

    move-result-object v15

    sput-object v15, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    .line 490
    sget-object v15, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5, v6, v12}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->calculateUpdateTime(Lcom/android/calendar/widget/CalendarAppWidgetModel;JLjava/lang/String;)J

    move-result-wide v10

    .line 495
    .local v10, triggerTime:J
    cmp-long v15, v10, v5

    if-gez v15, :cond_7f

    .line 496
    const-string v15, "CalendarWidget"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Encountered bad trigger time "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v10, v11, v5, v6}, Lcom/android/calendar/widget/CalendarAppWidgetService;->formatDebugTime(JJ)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-wide/32 v17, 0x1499700

    add-long v10, v5, v17

    .line 500
    :cond_7f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const-string v17, "alarm"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 502
    .local v2, alertManager:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 505
    .local v7, pendingUpdate:Landroid/app/PendingIntent;
    invoke-virtual {v2, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 506
    const/4 v15, 0x1

    invoke-virtual {v2, v15, v10, v11, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 507
    new-instance v8, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 508
    .local v8, time:Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 510
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v17

    sget-wide v19, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    cmp-long v15, v17, v19

    if-eqz v15, :cond_106

    .line 511
    new-instance v9, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 512
    .local v9, time2:Landroid/text/format/Time;
    sget-wide v17, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    move-wide/from16 v0, v17

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 513
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Landroid/text/format/Time;->normalize(Z)J

    .line 514
    iget v15, v8, Landroid/text/format/Time;->year:I

    iget v0, v9, Landroid/text/format/Time;->year:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v15, v0, :cond_eb

    iget v15, v8, Landroid/text/format/Time;->yearDay:I

    iget v0, v9, Landroid/text/format/Time;->yearDay:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v15, v0, :cond_ff

    .line 515
    :cond_eb
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/calendar/Utils;->getWidgetUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    .local v13, updateIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 520
    .end local v13           #updateIntent:Landroid/content/Intent;
    :cond_ff
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v17

    sput-wide v17, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    .line 523
    .end local v9           #time2:Landroid/text/format/Time;
    :cond_106
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    .line 524
    .local v14, widgetManager:Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_12d

    .line 525
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    .line 528
    .local v3, ids:[I
    const v15, 0x7f100028

    invoke-virtual {v14, v3, v15}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 532
    .end local v3           #ids:[I
    :goto_12a
    monitor-exit v16

    goto/16 :goto_2

    .line 530
    :cond_12d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    const v17, 0x7f100028

    move/from16 v0, v17

    invoke-virtual {v14, v15, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V
    :try_end_139
    .catchall {:try_start_1c .. :try_end_139} :catchall_19

    goto :goto_12a
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    .line 540
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    if-nez v0, :cond_d

    .line 541
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    .line 542
    invoke-virtual {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->initLoader()V

    .line 547
    :goto_c
    return-void

    .line 544
    :cond_d
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mUpdateLoader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 545
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mUpdateLoader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method
