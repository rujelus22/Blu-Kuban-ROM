.class public Lcom/android/calendar/event/EditEventFragment;
.super Landroid/app/Fragment;
.source "EditEventFragment.java"

# interfaces
.implements Lcom/android/calendar/CalendarController$EventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/EditEventFragment$EventBundle;,
        Lcom/android/calendar/event/EditEventFragment$Done;,
        Lcom/android/calendar/event/EditEventFragment$QueryHandler;
    }
.end annotation


# instance fields
.field private mActionBarListener:Landroid/view/View$OnClickListener;

.field private mBegin:J

.field private mContext:Landroid/app/Activity;

.field private mEnd:J

.field private mEvent:Lcom/android/calendar/CalendarController$EventInfo;

.field private mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

.field mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

.field mHelper:Lcom/android/calendar/event/EditEventHelper;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIntent:Landroid/content/Intent;

.field private mIsReadOnly:Z

.field mModel:Lcom/android/calendar/CalendarEventModel;

.field mModification:I

.field private mModifyDialog:Landroid/app/AlertDialog;

.field private mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

.field mOriginalModel:Lcom/android/calendar/CalendarEventModel;

.field private mOutstandingQueries:I

.field mRestoreModel:Lcom/android/calendar/CalendarEventModel;

.field private mSaveOnDetach:Z

.field public mShowModifyDialogOnLaunch:Z

.field private mUri:Landroid/net/Uri;

.field private mUseCustomActionBar:Z

.field mView:Lcom/android/calendar/event/EditEventView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/calendar/event/EditEventFragment;-><init>(Lcom/android/calendar/CalendarController$EventInfo;ZLandroid/content/Intent;)V

    .line 340
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/CalendarController$EventInfo;ZLandroid/content/Intent;)V
    .registers 7
    .parameter "event"
    .parameter "readOnly"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 342
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 93
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    .line 103
    iput v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 112
    new-instance v0, Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/EditEventFragment$Done;-><init>(Lcom/android/calendar/event/EditEventFragment;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    .line 114
    iput-boolean v2, p0, Lcom/android/calendar/event/EditEventFragment;->mSaveOnDetach:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    .line 124
    new-instance v0, Lcom/android/calendar/event/EditEventFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/EditEventFragment$1;-><init>(Lcom/android/calendar/event/EditEventFragment;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    .line 343
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    .line 344
    iput-boolean p2, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    .line 345
    iput-object p3, p0, Lcom/android/calendar/event/EditEventFragment;->mIntent:Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v2}, Lcom/android/calendar/event/EditEventFragment;->setHasOptionsMenu(Z)V

    .line 347
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/EditEventFragment;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventFragment;->onActionBarItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/EditEventFragment;)Lcom/android/calendar/event/EditEventFragment$Done;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/event/EditEventFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/calendar/event/EditEventFragment;->mSaveOnDetach:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/calendar/event/EditEventFragment;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/event/EditEventFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/calendar/event/EditEventFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/calendar/event/EditEventFragment;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventFragment;->setModelIfDone(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/event/EditEventFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/calendar/event/EditEventFragment;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private isEmpty()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 754
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_16

    .line 755
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_16

    .line 775
    .end local v2           #title:Ljava/lang/String;
    :cond_15
    :goto_15
    return v3

    .line 761
    :cond_16
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-eqz v4, :cond_2a

    .line 762
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 763
    .local v1, location:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_15

    .line 768
    .end local v1           #location:Ljava/lang/String;
    :cond_2a
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-eqz v4, :cond_3e

    .line 769
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, description:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_15

    .line 775
    .end local v0           #description:Ljava/lang/String;
    :cond_3e
    const/4 v3, 0x1

    goto :goto_15
.end method

.method private onActionBarItemSelected(I)Z
    .registers 7
    .parameter "itemId"

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x1

    .line 513
    packed-switch p1, :pswitch_data_80

    .line 541
    :goto_5
    return v4

    .line 515
    :pswitch_6
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->canRespond(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 516
    :cond_16
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 517
    iget v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    if-nez v0, :cond_28

    .line 518
    iput v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 520
    :cond_28
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 521
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto :goto_5

    .line 523
    :cond_33
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0, v4}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 524
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto :goto_5

    .line 526
    :cond_3e
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->canAddReminders(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 528
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment;->saveReminders()V

    .line 529
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0, v4}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 530
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto :goto_5

    .line 532
    :cond_6a
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0, v4}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 533
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto :goto_5

    .line 537
    :pswitch_75
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0, v4}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 538
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto :goto_5

    .line 513
    :pswitch_data_80
    .packed-switch 0x7f100080
        :pswitch_75
        :pswitch_6
    .end packed-switch
.end method

.method private saveReminders()V
    .registers 14

    .prologue
    .line 545
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 546
    .local v0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v1, v2, Lcom/android/calendar/CalendarEventModel;->mId:J

    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v6, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/event/EditEventHelper;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v10

    .line 549
    .local v10, changed:Z
    if-nez v10, :cond_1a

    .line 566
    :goto_19
    return-void

    .line 553
    :cond_1a
    new-instance v1, Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 554
    .local v1, service:Lcom/android/calendar/AsyncQueryService;
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v6, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 556
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v6, v3, Lcom/android/calendar/CalendarEventModel;->mId:J

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 557
    .local v4, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 558
    .local v12, len:I
    if-lez v12, :cond_74

    const/4 v11, 0x1

    .line 559
    .local v11, hasAlarm:Z
    :goto_46
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v2, v2, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-eq v11, v2, :cond_66

    .line 560
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 561
    .local v5, values:Landroid/content/ContentValues;
    const-string v3, "hasAlarm"

    if-eqz v11, :cond_76

    const/4 v2, 0x1

    :goto_56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 565
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_66
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    const v3, 0x7f0c0024

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_19

    .line 558
    .end local v11           #hasAlarm:Z
    :cond_74
    const/4 v11, 0x0

    goto :goto_46

    .line 561
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local v11       #hasAlarm:Z
    :cond_76
    const/4 v2, 0x0

    goto :goto_56
.end method

.method private setModelIfDone(I)V
    .registers 4
    .parameter "queryType"

    .prologue
    .line 318
    monitor-enter p0

    .line 319
    :try_start_1
    iget v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    .line 320
    iget v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    if-nez v0, :cond_37

    .line 321
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mRestoreModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v0, :cond_14

    .line 322
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mRestoreModel:Lcom/android/calendar/CalendarEventModel;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 324
    :cond_14
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    if-nez v0, :cond_29

    .line 325
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 326
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventFragment;->displayEditWhichDialog()V

    .line 332
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventView;->setModel(Lcom/android/calendar/CalendarEventModel;)V

    .line 333
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    iget v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventView;->setModification(I)V

    .line 335
    :cond_37
    monitor-exit p0

    .line 336
    return-void

    .line 328
    :cond_39
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    goto :goto_29

    .line 335
    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method private startQuery()V
    .registers 13

    .prologue
    const/16 v11, 0x8

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 350
    iput-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    .line 351
    iput-wide v6, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    .line 352
    iput-wide v6, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    .line 353
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    if-eqz v0, :cond_a1

    .line 354
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_8f

    .line 355
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v4, v4, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iput-wide v4, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 356
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v4, v4, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    .line 361
    :goto_2d
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_3d

    .line 362
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    .line 364
    :cond_3d
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v0, :cond_4d

    .line 365
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    .line 376
    :cond_4d
    :goto_4d
    iget-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_61

    .line 378
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHelper:Lcom/android/calendar/event/EditEventHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/calendar/event/EditEventHelper;->constructDefaultStartTime(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    .line 380
    :cond_61
    iget-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    iget-wide v6, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_73

    .line 382
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHelper:Lcom/android/calendar/event/EditEventHelper;

    iget-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    invoke-virtual {v0, v4, v5}, Lcom/android/calendar/event/EditEventHelper;->constructDefaultEndTime(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    .line 386
    :cond_73
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_ce

    move v8, v1

    .line 387
    .local v8, newEvent:Z
    :goto_78
    if-nez v8, :cond_d0

    .line 388
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput v3, v0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    .line 389
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    .line 393
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/event/EditEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :goto_8e
    return-void

    .line 359
    .end local v8           #newEvent:Z
    :cond_8f
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v5, v0, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v9, 0x10

    cmp-long v0, v5, v9

    if-nez v0, :cond_9f

    move v0, v1

    :goto_9c
    iput-boolean v0, v4, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    goto :goto_2d

    :cond_9f
    move v0, v3

    goto :goto_9c

    .line 367
    :cond_a1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    if-eqz v0, :cond_4d

    .line 368
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-wide v4, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->id:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_c1

    .line 369
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-wide v4, v4, Lcom/android/calendar/event/EditEventFragment$EventBundle;->id:J

    iput-wide v4, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 370
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-wide v4, v4, Lcom/android/calendar/event/EditEventFragment$EventBundle;->id:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    .line 372
    :cond_c1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-wide v4, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->start:J

    iput-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    .line 373
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-wide v4, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->end:J

    iput-wide v4, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    goto :goto_4d

    :cond_ce
    move v8, v3

    .line 386
    goto :goto_78

    .line 396
    .restart local v8       #newEvent:Z
    :cond_d0
    iput v11, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    .line 400
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v3, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    iput-wide v3, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 401
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v3, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    iput-wide v3, v0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 402
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput v1, v0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 405
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/event/EditEventHelper;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v5, "calendar_access_level>=500 AND visible=1"

    move v1, v11

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 411
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    iget v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventView;->setModification(I)V

    goto :goto_8e
.end method


# virtual methods
.method protected displayEditWhichDialog()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    .line 569
    iget v5, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    if-nez v5, :cond_68

    .line 570
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v5, v5, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 571
    .local v4, notSynced:Z
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v0, v5, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 572
    .local v0, isFirstEventInSeries:Z
    const/4 v1, 0x0

    .line 575
    .local v1, itemIndex:I
    if-eqz v4, :cond_6c

    .line 578
    if-eqz v0, :cond_69

    .line 581
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/CharSequence;

    .line 593
    .local v3, items:[Ljava/lang/CharSequence;
    :goto_19
    add-int/lit8 v2, v1, 0x1

    .end local v1           #itemIndex:I
    .local v2, itemIndex:I
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    const v6, 0x7f0c005b

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v1

    .line 596
    if-nez v0, :cond_83

    .line 597
    add-int/lit8 v1, v2, 0x1

    .end local v2           #itemIndex:I
    .restart local v1       #itemIndex:I
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    const v6, 0x7f0c005c

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v2

    .line 601
    :goto_35
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_41

    .line 602
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 603
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    .line 605
    :cond_41
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0049

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/calendar/event/EditEventFragment$2;

    invoke-direct {v6, p0, v4}, Lcom/android/calendar/event/EditEventFragment$2;-><init>(Lcom/android/calendar/event/EditEventFragment;Z)V

    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    .line 628
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/calendar/event/EditEventFragment$3;

    invoke-direct {v6, p0}, Lcom/android/calendar/event/EditEventFragment$3;-><init>(Lcom/android/calendar/event/EditEventFragment;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 638
    .end local v0           #isFirstEventInSeries:Z
    .end local v1           #itemIndex:I
    .end local v3           #items:[Ljava/lang/CharSequence;
    .end local v4           #notSynced:Z
    :cond_68
    return-void

    .line 583
    .restart local v0       #isFirstEventInSeries:Z
    .restart local v1       #itemIndex:I
    .restart local v4       #notSynced:Z
    :cond_69
    new-array v3, v6, [Ljava/lang/CharSequence;

    .restart local v3       #items:[Ljava/lang/CharSequence;
    goto :goto_19

    .line 586
    .end local v3           #items:[Ljava/lang/CharSequence;
    :cond_6c
    if-eqz v0, :cond_7f

    .line 587
    new-array v3, v6, [Ljava/lang/CharSequence;

    .line 591
    .restart local v3       #items:[Ljava/lang/CharSequence;
    :goto_70
    add-int/lit8 v2, v1, 0x1

    .end local v1           #itemIndex:I
    .restart local v2       #itemIndex:I
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    const v6, 0x7f0c005a

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v1

    move v1, v2

    .end local v2           #itemIndex:I
    .restart local v1       #itemIndex:I
    goto :goto_19

    .line 589
    .end local v3           #items:[Ljava/lang/CharSequence;
    :cond_7f
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/CharSequence;

    .restart local v3       #items:[Ljava/lang/CharSequence;
    goto :goto_70

    .end local v1           #itemIndex:I
    .restart local v2       #itemIndex:I
    :cond_83
    move v1, v2

    .end local v2           #itemIndex:I
    .restart local v1       #itemIndex:I
    goto :goto_35
.end method

.method public getSupportedEventTypes()J
    .registers 3

    .prologue
    .line 828
    const-wide/16 v0, 0x200

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 836
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mSaveOnDetach:Z

    if-eqz v0, :cond_23

    .line 838
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 839
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 840
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    .line 843
    :cond_23
    return-void
.end method

.method isEmptyNewEvent()Z
    .registers 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v0, :cond_6

    .line 747
    const/4 v0, 0x0

    .line 750
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment;->isEmpty()Z

    move-result v0

    goto :goto_5
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 417
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 418
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    .line 420
    new-instance v0, Lcom/android/calendar/event/EditEventHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/event/EditEventHelper;-><init>(Landroid/content/Context;Lcom/android/calendar/CalendarEventModel;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHelper:Lcom/android/calendar/event/EditEventHelper;

    .line 421
    new-instance v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/EditEventFragment$QueryHandler;-><init>(Lcom/android/calendar/event/EditEventFragment;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    .line 422
    new-instance v0, Lcom/android/calendar/CalendarEventModel;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/CalendarEventModel;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 423
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 426
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    const v1, 0x7f090007

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    :goto_37
    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUseCustomActionBar:Z

    .line 427
    return-void

    .line 426
    :cond_3a
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 467
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 468
    if-eqz p1, :cond_59

    .line 469
    const-string v0, "key_model"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 470
    const-string v0, "key_model"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mRestoreModel:Lcom/android/calendar/CalendarEventModel;

    .line 473
    :cond_17
    const-string v0, "key_edit_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 474
    const-string v0, "key_edit_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 476
    :cond_27
    const-string v0, "key_edit_on_launch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 477
    const-string v0, "key_edit_on_launch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    .line 480
    :cond_37
    const-string v0, "key_event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 481
    const-string v0, "key_event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    .line 483
    :cond_49
    const-string v0, "key_read_only"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 484
    const-string v0, "key_read_only"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    .line 487
    :cond_59
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 492
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 494
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUseCustomActionBar:Z

    if-nez v0, :cond_d

    .line 495
    const v0, 0x7f0f0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 497
    :cond_d
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 434
    iget-boolean v4, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    if-eqz v4, :cond_4f

    .line 435
    const v4, 0x7f04001f

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 439
    .local v3, view:Landroid/view/View;
    :goto_c
    new-instance v4, Lcom/android/calendar/event/EditEventView;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-direct {v4, v5, v3, v6}, Lcom/android/calendar/event/EditEventView;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;)V

    iput-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    .line 440
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment;->startQuery()V

    .line 442
    iget-boolean v4, p0, Lcom/android/calendar/event/EditEventFragment;->mUseCustomActionBar:Z

    if-eqz v4, :cond_4e

    .line 443
    const v4, 0x7f04001e

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 445
    .local v0, actionBarButtons:Landroid/view/View;
    const v4, 0x7f100080

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 446
    .local v1, cancelActionView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    const v4, 0x7f100081

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 448
    .local v2, doneActionView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 453
    .end local v0           #actionBarButtons:Landroid/view/View;
    .end local v1           #cancelActionView:Landroid/view/View;
    .end local v2           #doneActionView:Landroid/view/View;
    :cond_4e
    return-object v3

    .line 437
    .end local v3           #view:Landroid/view/View;
    :cond_4f
    const v4, 0x7f04001b

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .restart local v3       #view:Landroid/view/View;
    goto :goto_c
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 791
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    if-eqz v0, :cond_a

    .line 792
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventView;->setModel(Lcom/android/calendar/CalendarEventModel;)V

    .line 794
    :cond_a
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_15

    .line 795
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 796
    iput-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    .line 798
    :cond_15
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 799
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 458
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 460
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUseCustomActionBar:Z

    if-eqz v0, :cond_11

    .line 461
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 463
    :cond_11
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 501
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventFragment;->onActionBarItemSelected(I)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 781
    .local v0, act:Landroid/app/Activity;
    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mSaveOnDetach:Z

    if-eqz v1, :cond_27

    if-eqz v0, :cond_27

    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    if-nez v1, :cond_27

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 783
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 784
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    .line 786
    :cond_27
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 787
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "outState"

    .prologue
    const/4 v3, 0x1

    .line 808
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    .line 809
    const-string v0, "key_model"

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 810
    const-string v0, "key_edit_state"

    iget v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 811
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    if-eqz v0, :cond_50

    .line 812
    new-instance v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/event/EditEventFragment$EventBundle;-><init>(Lcom/android/calendar/event/EditEventFragment$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    .line 813
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v1, v1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iput-wide v1, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->id:J

    .line 814
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_3e

    .line 815
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v1, v1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->start:J

    .line 817
    :cond_3e
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v0, :cond_50

    .line 818
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v1, v1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->end:J

    .line 821
    :cond_50
    const-string v0, "key_edit_on_launch"

    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 822
    const-string v0, "key_event"

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 823
    const-string v0, "key_read_only"

    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 824
    return-void
.end method
