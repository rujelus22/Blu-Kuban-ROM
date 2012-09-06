.class public Lcom/android/calendar/DeleteEventHelper;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCallback:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDeleteExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteListListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteNormalDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteRepeatingDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteStartedListener:Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mEndMillis:J

.field private mExitWhenDone:Z

.field private mModel:Lcom/android/calendar/CalendarEventModel;

.field private final mParent:Landroid/app/Activity;

.field private mService:Lcom/android/calendar/AsyncQueryService;

.field private mStartMillis:J

.field private mSyncId:Ljava/lang/String;

.field private mWhichDelete:I

.field private mWhichIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Z)V
    .registers 6
    .parameter "context"
    .parameter "parentActivity"
    .parameter "exitWhenDone"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteStartedListener:Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;

    .line 133
    new-instance v0, Lcom/android/calendar/DeleteEventHelper$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/DeleteEventHelper$2;-><init>(Lcom/android/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteNormalDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 152
    new-instance v0, Lcom/android/calendar/DeleteEventHelper$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/DeleteEventHelper$3;-><init>(Lcom/android/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 169
    new-instance v0, Lcom/android/calendar/DeleteEventHelper$4;

    invoke-direct {v0, p0}, Lcom/android/calendar/DeleteEventHelper$4;-><init>(Lcom/android/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteListListener:Landroid/content/DialogInterface$OnClickListener;

    .line 185
    new-instance v0, Lcom/android/calendar/DeleteEventHelper$5;

    invoke-direct {v0, p0}, Lcom/android/calendar/DeleteEventHelper$5;-><init>(Lcom/android/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteRepeatingDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 103
    if-eqz p3, :cond_2e

    if-nez p2, :cond_2e

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentActivity is required to exit when done"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2e
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    .line 110
    new-instance v0, Lcom/android/calendar/DeleteEventHelper$1;

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/DeleteEventHelper$1;-><init>(Lcom/android/calendar/DeleteEventHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 123
    iput-boolean p3, p0, Lcom/android/calendar/DeleteEventHelper;->mExitWhenDone:Z

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/DeleteEventHelper;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/calendar/DeleteEventHelper;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/DeleteEventHelper;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/DeleteEventHelper;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/DeleteEventHelper;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/calendar/DeleteEventHelper;->deleteRepeatingEvent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/DeleteEventHelper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/calendar/DeleteEventHelper;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/calendar/DeleteEventHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/calendar/DeleteEventHelper;->deleteStarted()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/DeleteEventHelper;)Lcom/android/calendar/CalendarEventModel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/DeleteEventHelper;)Lcom/android/calendar/AsyncQueryService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/DeleteEventHelper;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/DeleteEventHelper;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/calendar/DeleteEventHelper;->mExitWhenDone:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/DeleteEventHelper;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/DeleteEventHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/calendar/DeleteEventHelper;->deleteExceptionEvent()V

    return-void
.end method

.method private deleteExceptionEvent()V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 341
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v9, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 344
    .local v9, id:J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 345
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "eventStatus"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 348
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v1}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    const-wide/16 v7, 0x0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 350
    return-void
.end method

.method private deleteRepeatingEvent(I)V
    .registers 30
    .parameter "which"

    .prologue
    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v2, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 354
    .local v25, rRule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v0, v2, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    move/from16 v16, v0

    .line 355
    .local v16, allDay:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v0, v2, Lcom/android/calendar/CalendarEventModel;->mStart:J

    move-wide/from16 v20, v0

    .line 356
    .local v20, dtstart:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v0, v2, Lcom/android/calendar/CalendarEventModel;->mId:J

    move-wide/from16 v23, v0

    .line 358
    .local v23, id:J
    packed-switch p1, :pswitch_data_1aa

    .line 434
    :goto_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_30

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 437
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DeleteEventHelper;->mExitWhenDone:Z

    if-eqz v2, :cond_3d

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 440
    :cond_3d
    return-void

    .line 363
    :pswitch_3e
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    cmp-long v2, v20, v2

    if-nez v2, :cond_46

    .line 369
    :cond_46
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 373
    .local v6, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v2, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 374
    .local v27, title:Ljava/lang/String;
    const-string v2, "title"

    move-object/from16 v0, v27

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v2, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 377
    .local v26, timezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v0, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    move-wide/from16 v17, v0

    .line 378
    .local v17, calendarId:J
    const-string v2, "eventTimezone"

    move-object/from16 v0, v26

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v3, "allDay"

    if-eqz v16, :cond_eb

    const/4 v2, 0x1

    :goto_76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string v3, "originalAllDay"

    if-eqz v16, :cond_ed

    const/4 v2, 0x1

    :goto_82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    const-string v2, "calendar_id"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    const-string v2, "dtstart"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 383
    const-string v2, "dtend"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    const-string v2, "original_sync_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v2, "original_id"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 386
    const-string v2, "originalInstanceTime"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 387
    const-string v2, "eventStatus"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v3}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v3

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/AsyncQueryService;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;J)V

    goto/16 :goto_23

    .line 379
    :cond_eb
    const/4 v2, 0x0

    goto :goto_76

    .line 380
    :cond_ed
    const/4 v2, 0x0

    goto :goto_82

    .line 394
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v17           #calendarId:J
    .end local v26           #timezone:Ljava/lang/String;
    .end local v27           #title:Ljava/lang/String;
    :pswitch_ef
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v23

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 395
    .local v10, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v2}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    invoke-virtual/range {v7 .. v14}, Lcom/android/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    goto/16 :goto_23

    .line 402
    .end local v10           #uri:Landroid/net/Uri;
    :pswitch_10d
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    cmp-long v2, v20, v2

    if-nez v2, :cond_133

    .line 403
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v23

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 404
    .restart local v10       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v2}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    invoke-virtual/range {v7 .. v14}, Lcom/android/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    goto/16 :goto_23

    .line 410
    .end local v10           #uri:Landroid/net/Uri;
    :cond_133
    new-instance v22, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct/range {v22 .. v22}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 411
    .local v22, eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 412
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 413
    .local v19, date:Landroid/text/format/Time;
    if-eqz v16, :cond_14c

    .line 414
    const-string v2, "UTC"

    move-object/from16 v0, v19

    iput-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 416
    :cond_14c
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 417
    move-object/from16 v0, v19

    iget v2, v0, Landroid/text/format/Time;->second:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v19

    iput v2, v0, Landroid/text/format/Time;->second:I

    .line 418
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 422
    const-string v2, "UTC"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    .line 425
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 426
    .restart local v6       #values:Landroid/content/ContentValues;
    const-string v2, "dtstart"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 427
    const-string v2, "rrule"

    invoke-virtual/range {v22 .. v22}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v23

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 429
    .restart local v10       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v2}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v8

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object v11, v6

    invoke-virtual/range {v7 .. v15}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    goto/16 :goto_23

    .line 358
    :pswitch_data_1aa
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_10d
        :pswitch_ef
    .end packed-switch
.end method

.method private deleteStarted()V
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteStartedListener:Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;

    if-eqz v0, :cond_9

    .line 448
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteStartedListener:Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;

    invoke-interface {v0}, Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;->onDeleteStarted()V

    .line 450
    :cond_9
    return-void
.end method


# virtual methods
.method public delete(JJJI)V
    .registers 16
    .parameter "begin"
    .parameter "end"
    .parameter "eventId"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 210
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 211
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v1}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    sget-object v4, Lcom/android/calendar/event/EditEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iput-wide p1, p0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    .line 214
    iput-wide p3, p0, Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J

    .line 215
    iput p7, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    .line 216
    return-void
.end method

.method public delete(JJJILjava/lang/Runnable;)V
    .registers 9
    .parameter "begin"
    .parameter "end"
    .parameter "eventId"
    .parameter "which"
    .parameter "callback"

    .prologue
    .line 219
    invoke-virtual/range {p0 .. p7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 220
    iput-object p8, p0, Lcom/android/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;

    .line 221
    return-void
.end method

.method public delete(JJLcom/android/calendar/CalendarEventModel;I)V
    .registers 26
    .parameter "begin"
    .parameter "end"
    .parameter "model"
    .parameter "which"

    .prologue
    .line 258
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    .line 259
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    .line 260
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J

    .line 261
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 262
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    .line 267
    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 268
    .local v13, rRule:Ljava/lang/String;
    move-object/from16 v0, p5

    iget-object v12, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 269
    .local v12, originalEvent:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_a9

    .line 270
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v17, 0x7f0c005f

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x1010355

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const/high16 v17, 0x104

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 275
    .local v5, dialog:Landroid/app/AlertDialog;
    if-nez v12, :cond_8a

    .line 277
    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x104000a

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mDeleteNormalDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v18, v0

    move/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v5, v0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 286
    :goto_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 287
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 288
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 338
    :cond_89
    :goto_89
    return-void

    .line 282
    :cond_8a
    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x104000a

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mDeleteExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v18, v0

    move/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v5, v0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_77

    .line 292
    .end local v5           #dialog:Landroid/app/AlertDialog;
    :cond_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 293
    .local v14, res:Landroid/content/res/Resources;
    new-instance v7, Ljava/util/ArrayList;

    const v16, 0x7f07000f

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 296
    .local v7, labelArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v16, 0x7f070010

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    .line 297
    .local v9, labelValues:[I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v8, labelIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v4, v9

    .local v4, arr$:[I
    array-length v10, v4

    .local v10, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_d8
    if-ge v6, v10, :cond_e8

    aget v15, v4, v6

    .line 299
    .local v15, val:I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v6, v6, 0x1

    goto :goto_d8

    .line 302
    .end local v15           #val:I
    :cond_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_19f

    .line 304
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 305
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 306
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    move/from16 v16, v0

    if-nez v16, :cond_114

    .line 308
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 309
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 316
    :cond_114
    :goto_114
    const/16 v16, -0x1

    move/from16 v0, p6

    move/from16 v1, v16

    if-eq v0, v1, :cond_126

    .line 318
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p6

    .line 320
    :cond_126
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/calendar/DeleteEventHelper;->mWhichIndex:Ljava/util/ArrayList;

    .line 321
    new-instance v3, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x109000f

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v3, v0, v1, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 323
    .local v3, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v17, 0x1010355

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mDeleteListListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, p6

    move-object/from16 v2, v17

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x104000a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mDeleteRepeatingDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const/high16 v17, 0x104

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    .line 328
    .restart local v5       #dialog:Landroid/app/AlertDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 329
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 331
    const/16 v16, -0x1

    move/from16 v0, p6

    move/from16 v1, v16

    if-ne v0, v1, :cond_89

    .line 334
    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v11

    .line 335
    .local v11, ok:Landroid/widget/Button;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_89

    .line 311
    .end local v3           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v5           #dialog:Landroid/app/AlertDialog;
    .end local v11           #ok:Landroid/widget/Button;
    :cond_19f
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    move/from16 v16, v0

    if-nez v16, :cond_114

    .line 313
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 314
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_114
.end method

.method public dismissAlertDialog()V
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 461
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 463
    :cond_9
    return-void
.end method

.method public setDeleteNotificationListener(Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteStartedListener:Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;

    .line 444
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 454
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 456
    :cond_9
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 457
    return-void
.end method
