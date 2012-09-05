.class public Lcom/android/calendar/AgendaDeleteActivity;
.super Landroid/app/Activity;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final HEADER_POS:I

.field private final HEADER_POS_ALL_BEFORE_TODAY:I

.field private eventTitle:I

.field private mAgendaListView:Lcom/android/calendar/AgendaListView;

.field private mAllBeforeCheckBox:Landroid/widget/CheckBox;

.field private mAllCheckBox:Landroid/widget/CheckBox;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDeleteButton:Landroid/widget/Button;

.field private mDeleteConfirm:Landroid/app/AlertDialog;

.field private mDeleteRunnable:Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;

.field private mDeleteStart:Z

.field private mDeleteType:I

.field public mEndDay:I

.field public mEndMillis:J

.field private mEventIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsBeforeToday:Z

.field private mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

.field private mProgressCount:I

.field public mStartDay:I

.field public mStartMillis:J

.field private mTime:Landroid/text/format/Time;

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 83
    sput-boolean v3, Lcom/android/calendar/AgendaDeleteActivity;->DEBUG:Z

    .line 129
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/AgendaDeleteActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;-><init>(Lcom/android/calendar/AgendaDeleteActivity;Lcom/android/calendar/AgendaDeleteActivity$1;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteRunnable:Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mHandler:Landroid/os/Handler;

    .line 176
    iput v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgressCount:I

    .line 178
    iput-boolean v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z

    .line 180
    iput-boolean v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z

    .line 187
    iput v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->HEADER_POS:I

    .line 188
    iput v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->HEADER_POS_ALL_BEFORE_TODAY:I

    .line 192
    new-instance v0, Lcom/android/calendar/AgendaDeleteActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AgendaDeleteActivity$1;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mUpdateTZ:Ljava/lang/Runnable;

    .line 1167
    return-void
.end method

.method private CountOfBeforeToday()I
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1133
    .line 1134
    invoke-static {p0}, Lcom/android/calendar/Utils;->getTodayMillis(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 1135
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1136
    const-string v3, "preferences_hide_declined"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1137
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "deleted=0 AND (eventStatus!=2 OR eventStatus is null)"

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1139
    if-eqz v2, :cond_5c

    .line 1140
    const-string v2, " AND visible=1 AND selfAttendeeStatus!=2"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1145
    :goto_21
    const-string v2, " AND calendar_access_level>=500"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND dtstart<="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1154
    invoke-virtual {p0}, Lcom/android/calendar/AgendaDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1156
    if-eqz v1, :cond_62

    .line 1157
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1158
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1160
    :goto_5b
    return v0

    .line 1143
    :cond_5c
    const-string v2, " AND visible=1"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_21

    :cond_62
    move v0, v6

    goto :goto_5b
.end method

.method static synthetic access$100(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/AgendaDeleteActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/calendar/AgendaDeleteActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/calendar/AgendaDeleteActivity;Landroid/text/format/Time;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity;->mTime:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteRunnable:Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/AgendaDeleteActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/calendar/AgendaDeleteActivity;->updateDeleteButtonStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/AgendaDeleteActivity;Lcom/android/calendar/AgendaWindowAdapter;Ljava/util/HashMap;JJ)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p6}, Lcom/android/calendar/AgendaDeleteActivity;->queryEvent(Lcom/android/calendar/AgendaWindowAdapter;Ljava/util/HashMap;JJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mUpdateTZ:Ljava/lang/Runnable;

    return-object v0
.end method

.method private queryEvent(Lcom/android/calendar/AgendaWindowAdapter;Ljava/util/HashMap;JJ)V
    .registers 28
    .parameter "adapter"
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/AgendaWindowAdapter;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 924
    .local p2, checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    const/4 v13, 0x0

    .line 927
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteType:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1d

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1d

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1d

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_87

    .line 929
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AgendaDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/calendar/AgendaDeleteActivity;->mStartDay:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/calendar/AgendaDeleteActivity;->mEndDay:I

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/calendar/AgendaWindowAdapter;->buildQueryUriforDelete(JJII)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/calendar/AgendaWindowAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    const-wide/16 v9, -0x1

    const-wide/16 v19, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Lcom/android/calendar/AgendaWindowAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "startDay ASC, begin ASC, title ASC"

    move-object/from16 v5, v18

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 938
    :goto_50
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_bb

    .line 939
    if-eqz v13, :cond_bb

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_bb

    .line 940
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 942
    const/4 v15, 0x0

    .local v15, i:I
    :goto_62
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v15, v5, :cond_bc

    .line 943
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 944
    .local v16, id:J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    .line 945
    .local v12, check:Ljava/lang/Boolean;
    if-eqz v12, :cond_a1

    .line 946
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_a1

    .line 947
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 942
    :goto_84
    add-int/lit8 v15, v15, 0x1

    goto :goto_62

    .line 934
    .end local v12           #check:Ljava/lang/Boolean;
    .end local v15           #i:I
    .end local v16           #id:J
    :cond_87
    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaWindowAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v8

    .line 935
    .local v8, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AgendaDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/calendar/AgendaDeleteActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "dtstart ASC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    goto :goto_50

    .line 951
    .end local v8           #selection:Ljava/lang/String;
    .restart local v12       #check:Ljava/lang/Boolean;
    .restart local v15       #i:I
    .restart local v16       #id:J
    :cond_a1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_af} :catch_b0

    goto :goto_84

    .line 959
    .end local v12           #check:Ljava/lang/Boolean;
    .end local v15           #i:I
    .end local v16           #id:J
    :catch_b0
    move-exception v14

    .line 961
    .local v14, e:Ljava/lang/Exception;
    const-string v5, "hi"

    const-string v6, "Exception Caught"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 965
    .end local v14           #e:Ljava/lang/Exception;
    :cond_bb
    :goto_bb
    return-void

    .line 954
    .restart local v15       #i:I
    :cond_bc
    :try_start_bc
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bf} :catch_b0

    goto :goto_bb
.end method

.method private updateAllCheckState(ZI)V
    .registers 19
    .parameter "bCheckState"
    .parameter "position"

    .prologue
    .line 842
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v14}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v14

    check-cast v14, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v14}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaWindowAdapter;

    .line 845
    .local v1, adapter:Lcom/android/calendar/AgendaWindowAdapter;
    if-eqz p1, :cond_7a

    .line 846
    invoke-virtual {v1}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v3

    .line 847
    .local v3, checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v14}, Lcom/android/calendar/AgendaListView;->getCount()I

    move-result v5

    .line 848
    .local v5, dataCount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v14}, Lcom/android/calendar/AgendaListView;->getHeaderViewsCount()I

    move-result v10

    .line 849
    .local v10, headerCount:I
    const/4 v9, 0x1

    .line 850
    .local v9, everyBodyIsOn:Z
    const/4 v2, 0x1

    .line 852
    .local v2, beforeTodayIsOn:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_29
    sub-int v14, v5, v10

    if-ge v11, v14, :cond_5b

    .line 853
    invoke-virtual {v1, v11}, Lcom/android/calendar/AgendaWindowAdapter;->getEventIdByPosition(I)J

    move-result-wide v6

    .line 854
    .local v6, eventId:J
    const-wide/16 v14, -0x1

    cmp-long v14, v6, v14

    if-eqz v14, :cond_77

    .line 855
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 856
    .local v4, checked:Ljava/lang/Boolean;
    if-eqz v4, :cond_49

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_77

    .line 857
    :cond_49
    const/4 v9, 0x0

    .line 858
    invoke-virtual {v1, v11}, Lcom/android/calendar/AgendaWindowAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v8

    .line 859
    .local v8, eventInfo:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/Utils;->getTodayMillis(Landroid/content/Context;)J

    move-result-wide v12

    .line 861
    .local v12, millis:J
    if-eqz v8, :cond_5b

    iget-wide v14, v8, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    cmp-long v14, v14, v12

    if-gez v14, :cond_5b

    .line 862
    const/4 v2, 0x0

    .line 870
    .end local v4           #checked:Ljava/lang/Boolean;
    .end local v6           #eventId:J
    .end local v8           #eventInfo:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    .end local v12           #millis:J
    :cond_5b
    const/4 v14, 0x2

    if-ne v10, v14, :cond_65

    .line 871
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v14, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 872
    :cond_65
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v14, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 890
    .end local v2           #beforeTodayIsOn:Z
    .end local v3           #checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v5           #dataCount:I
    .end local v9           #everyBodyIsOn:Z
    .end local v10           #headerCount:I
    .end local v11           #i:I
    :cond_6c
    :goto_6c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v14}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v14

    iput-boolean v14, v1, Lcom/android/calendar/AgendaWindowAdapter;->mAllChecked:Z

    .line 891
    return-void

    .line 852
    .restart local v2       #beforeTodayIsOn:Z
    .restart local v3       #checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v5       #dataCount:I
    .restart local v6       #eventId:J
    .restart local v9       #everyBodyIsOn:Z
    .restart local v10       #headerCount:I
    .restart local v11       #i:I
    :cond_77
    add-int/lit8 v11, v11, 0x1

    goto :goto_29

    .line 877
    .end local v2           #beforeTodayIsOn:Z
    .end local v3           #checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v5           #dataCount:I
    .end local v6           #eventId:J
    .end local v9           #everyBodyIsOn:Z
    .end local v10           #headerCount:I
    .end local v11           #i:I
    :cond_7a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 879
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/calendar/AgendaWindowAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v8

    .line 881
    .restart local v8       #eventInfo:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v8, :cond_6c

    .line 882
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/Utils;->getTodayMillis(Landroid/content/Context;)J

    move-result-wide v12

    .line 883
    .restart local v12       #millis:J
    iget-wide v14, v8, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    cmp-long v14, v14, v12

    if-gez v14, :cond_6c

    .line 884
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_6c
.end method

.method private updateDeleteButtonStatus()V
    .registers 12

    .prologue
    .line 894
    iget-object v7, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v7}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v7}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter;

    .line 896
    .local v0, adapter:Lcom/android/calendar/AgendaWindowAdapter;
    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v2

    .line 897
    .local v2, checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 898
    .local v4, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 899
    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 900
    .local v5, isEnable:Z
    :cond_1b
    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_42

    .line 901
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 902
    .local v3, id:Ljava/lang/Long;
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 903
    .local v1, check:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1b

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1b

    .line 904
    const/4 v5, 0x1

    goto :goto_1b

    .line 907
    .end local v1           #check:Ljava/lang/Boolean;
    .end local v3           #id:Ljava/lang/Long;
    :cond_42
    iget-object v7, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v7, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 908
    return-void
.end method

.method private updateDeleteDailogStatus()V
    .registers 9

    .prologue
    .line 817
    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v6}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v6}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter;

    .line 819
    .local v0, adapter:Lcom/android/calendar/AgendaWindowAdapter;
    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v2

    .line 821
    .local v2, checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 823
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 824
    .local v4, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 825
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_1f
    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 826
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 827
    .local v3, id:Ljava/lang/Long;
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 828
    .local v1, check:Ljava/lang/Boolean;
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1f

    .line 829
    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 834
    .end local v1           #check:Ljava/lang/Boolean;
    .end local v3           #id:Ljava/lang/Long;
    :cond_40
    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    if-eqz v6, :cond_5c

    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5c

    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_5c

    .line 835
    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 836
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    .line 839
    :cond_5c
    return-void
.end method


# virtual methods
.method public getAgendaAdapter()Lcom/android/calendar/AgendaWindowAdapter;
    .registers 3

    .prologue
    .line 918
    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v1}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 919
    .local v0, adapter:Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaWindowAdapter;

    return-object v1
.end method

.method public getDeleteType()I
    .registers 2

    .prologue
    .line 1164
    iget v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteType:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "icicle"

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 235
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v9

    const-wide/32 v10, 0x400000

    invoke-virtual {v9, v10, v11}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 237
    const v9, 0x7f030002

    invoke-virtual {p0, v9}, Lcom/android/calendar/AgendaDeleteActivity;->setContentView(I)V

    .line 239
    invoke-virtual {p0}, Lcom/android/calendar/AgendaDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 241
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    .line 243
    const-wide/16 v6, 0x0

    .line 244
    .local v6, millis:J
    new-instance v9, Landroid/text/format/Time;

    iget-object v10, p0, Lcom/android/calendar/AgendaDeleteActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v10}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mTime:Landroid/text/format/Time;

    .line 245
    if-eqz p1, :cond_37

    .line 247
    const-string v9, "key_restore_time"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 248
    sget-boolean v9, Lcom/android/calendar/AgendaDeleteActivity;->DEBUG:Z

    if-eqz v9, :cond_37

    .line 253
    :cond_37
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-nez v9, :cond_55

    .line 255
    invoke-virtual {p0}, Lcom/android/calendar/AgendaDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "beginTime"

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 256
    sget-boolean v9, Lcom/android/calendar/AgendaDeleteActivity;->DEBUG:Z

    if-eqz v9, :cond_55

    .line 257
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 258
    .local v8, time:Landroid/text/format/Time;
    invoke-virtual {v8, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 263
    .end local v8           #time:Landroid/text/format/Time;
    :cond_55
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-nez v9, :cond_63

    .line 264
    sget-boolean v9, Lcom/android/calendar/AgendaDeleteActivity;->DEBUG:Z

    if-eqz v9, :cond_5f

    .line 267
    :cond_5f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 269
    :cond_63
    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v9, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 271
    invoke-virtual {p0}, Lcom/android/calendar/AgendaDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 272
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "beginTime"

    const-wide/16 v10, -0x1

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    .line 273
    const-string v9, "endTime"

    const-wide/16 v10, -0x1

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    .line 274
    const-string v9, "event_start_day"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mStartDay:I

    .line 275
    const-string v9, "event_end_day"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEndDay:I

    .line 276
    const-string v9, "delete_type"

    const/4 v10, 0x5

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteType:I

    .line 278
    const v9, 0x7f0f0009

    invoke-virtual {p0, v9}, Lcom/android/calendar/AgendaDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/AgendaListView;

    iput-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    .line 279
    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/calendar/AgendaListView;->setItemsCanFocus(Z)V

    .line 280
    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/calendar/AgendaListView;->setChoiceMode(I)V

    .line 281
    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v9, p0}, Lcom/android/calendar/AgendaListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 284
    const v9, 0x7f030003

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 286
    .local v3, allitem:Landroid/widget/LinearLayout;
    const v9, 0x7f0f000c

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 287
    .local v0, allText:Landroid/widget/TextView;
    iget v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteType:I

    packed-switch v9, :pswitch_data_1bc

    .line 314
    :goto_cf
    const v9, 0x7f0f000d

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    .line 327
    invoke-virtual {p0}, Lcom/android/calendar/AgendaDeleteActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030003

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 328
    .local v2, allbeforeitem:Landroid/view/View;
    const v9, 0x7f0f000c

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 329
    .local v1, allbeforeText:Landroid/widget/TextView;
    const v9, 0x7f0a009e

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 330
    const v9, 0x7f0f000d

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    .line 331
    new-instance v9, Lcom/android/calendar/AgendaDeleteActivity$2;

    invoke-direct {v9, p0}, Lcom/android/calendar/AgendaDeleteActivity$2;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v9, v3}, Lcom/android/calendar/AgendaListView;->addHeaderView(Landroid/view/View;)V

    .line 343
    iget v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteType:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_1b7

    invoke-direct {p0}, Lcom/android/calendar/AgendaDeleteActivity;->CountOfBeforeToday()I

    move-result v9

    if-lez v9, :cond_1b7

    .line 344
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z

    .line 345
    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v9, v2}, Lcom/android/calendar/AgendaListView;->addHeaderView(Landroid/view/View;)V

    .line 351
    :goto_120
    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    iget-object v10, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    iget-object v10, v10, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v9, v10}, Lcom/android/calendar/AgendaListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 353
    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    new-instance v10, Lcom/android/calendar/AgendaDeleteActivity$3;

    invoke-direct {v10, p0}, Lcom/android/calendar/AgendaDeleteActivity$3;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v9, v10}, Lcom/android/calendar/AgendaListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 406
    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    new-instance v10, Lcom/android/calendar/AgendaDeleteActivity$4;

    invoke-direct {v10, p0}, Lcom/android/calendar/AgendaDeleteActivity$4;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v9, v10}, Lcom/android/calendar/AgendaListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 467
    const v9, 0x7f0f0077

    invoke-virtual {p0, v9}, Lcom/android/calendar/AgendaDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0a008e

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 469
    const v9, 0x7f0f00c9

    invoke-virtual {p0, v9}, Lcom/android/calendar/AgendaDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteButton:Landroid/widget/Button;

    .line 470
    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteButton:Landroid/widget/Button;

    const v10, 0x7f0a0086

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    .line 471
    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteButton:Landroid/widget/Button;

    new-instance v10, Lcom/android/calendar/AgendaDeleteActivity$5;

    invoke-direct {v10, p0}, Lcom/android/calendar/AgendaDeleteActivity$5;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 522
    const v9, 0x7f0f00ca

    invoke-virtual {p0, v9}, Lcom/android/calendar/AgendaDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 523
    .local v4, cancelButton:Landroid/widget/Button;
    const v9, 0x7f0a0087

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setText(I)V

    .line 524
    new-instance v9, Lcom/android/calendar/AgendaDeleteActivity$6;

    invoke-direct {v9, p0}, Lcom/android/calendar/AgendaDeleteActivity$6;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    return-void

    .line 289
    .end local v1           #allbeforeText:Landroid/widget/TextView;
    .end local v2           #allbeforeitem:Landroid/view/View;
    .end local v4           #cancelButton:Landroid/widget/Button;
    :pswitch_187
    const v9, 0x7f0a009c

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_cf

    .line 293
    :pswitch_18f
    const v9, 0x7f0a00bd

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_cf

    .line 297
    :pswitch_197
    const v9, 0x7f0a00be

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_cf

    .line 301
    :pswitch_19f
    const v9, 0x7f0a00bf

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_cf

    .line 305
    :pswitch_1a7
    const v9, 0x7f0a009d

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 306
    const-wide/16 v9, -0x1

    iput-wide v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    .line 307
    const-wide/16 v9, -0x1

    iput-wide v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    goto/16 :goto_cf

    .line 347
    .restart local v1       #allbeforeText:Landroid/widget/TextView;
    .restart local v2       #allbeforeitem:Landroid/view/View;
    :cond_1b7
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z

    goto/16 :goto_120

    .line 287
    :pswitch_data_1bc
    .packed-switch 0x1
        :pswitch_187
        :pswitch_18f
        :pswitch_197
        :pswitch_19f
        :pswitch_1a7
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "dialogId"

    .prologue
    const/4 v1, 0x0

    const v8, 0x7f0a0087

    const v5, 0x7f0a0076

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 978
    move-object v0, p0

    .line 982
    .local v0, context:Landroid/content/Context;
    sparse-switch p1, :sswitch_data_100

    .line 1091
    :cond_d
    :goto_d
    return-object v1

    .line 985
    :sswitch_e
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_d

    .line 988
    :cond_1a
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v7, :cond_54

    .line 990
    const v3, 0x7f0a006a

    iput v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->eventTitle:I

    .line 995
    :goto_27
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a006c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget v4, p0, Lcom/android/calendar/AgendaDeleteActivity;->eventTitle:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/calendar/AgendaDeleteActivity$9;

    invoke-direct {v4, p0}, Lcom/android/calendar/AgendaDeleteActivity$9;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/calendar/AgendaDeleteActivity$8;

    invoke-direct {v4, p0}, Lcom/android/calendar/AgendaDeleteActivity$8;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    .line 1009
    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    goto :goto_d

    .line 992
    :cond_54
    const v3, 0x7f0a006b

    iput v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->eventTitle:I

    goto :goto_27

    .line 1012
    :sswitch_5a
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1015
    .local v2, progressMax:I
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-direct {v3, v0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    .line 1016
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMax(I)V

    .line 1017
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressStyle(I)V

    .line 1018
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1019
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v4, 0x7f0a002c

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setTitle(I)V

    .line 1020
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setIcon(I)V

    .line 1021
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgress(I)V

    .line 1022
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setCancelable(Z)V

    .line 1023
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressNumberVisibility(I)V

    .line 1024
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressPercentVisibility(I)V

    .line 1025
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {p0, v8}, Lcom/android/calendar/AgendaDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/calendar/AgendaDeleteActivity$10;

    invoke-direct {v5, p0}, Lcom/android/calendar/AgendaDeleteActivity$10;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1036
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    new-instance v4, Lcom/android/calendar/AgendaDeleteActivity$11;

    invoke-direct {v4, p0}, Lcom/android/calendar/AgendaDeleteActivity$11;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1067
    iput-boolean v7, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z

    .line 1068
    iput v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgressCount:I

    .line 1069
    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    goto/16 :goto_d

    .line 1072
    .end local v2           #progressMax:I
    :sswitch_c2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a008e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00b6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/calendar/AgendaDeleteActivity$12;

    invoke-direct {v4, p0}, Lcom/android/calendar/AgendaDeleteActivity$12;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_d

    .line 1082
    :sswitch_e4
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1083
    .local v1, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/calendar/AgendaDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1084
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1085
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto/16 :goto_d

    .line 982
    nop

    :sswitch_data_100
    .sparse-switch
        0x3ed -> :sswitch_5a
        0x3f2 -> :sswitch_c2
        0x3f7 -> :sswitch_e4
        0x3fc -> :sswitch_e
    .end sparse-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
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
    .line 753
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v8, 0x7f0f001b

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 757
    .local v1, box:Landroid/widget/CheckBox;
    if-nez p3, :cond_1f

    .line 759
    iget-object v8, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_81

    const/4 v4, 0x1

    .line 760
    .local v4, checked:Z
    :goto_14
    iget-object v8, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 761
    invoke-virtual {p0, v4}, Lcom/android/calendar/AgendaDeleteActivity;->setAllItemChecked(Z)V

    .line 762
    invoke-direct {p0}, Lcom/android/calendar/AgendaDeleteActivity;->updateDeleteButtonStatus()V

    .line 764
    .end local v4           #checked:Z
    :cond_1f
    iget-object v8, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v8}, Lcom/android/calendar/AgendaListView;->getHeaderViewsCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3f

    const/4 v8, 0x1

    if-ne p3, v8, :cond_3f

    .line 766
    iget-object v8, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_83

    const/4 v4, 0x1

    .line 767
    .restart local v4       #checked:Z
    :goto_34
    iget-object v8, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 768
    invoke-virtual {p0, v4}, Lcom/android/calendar/AgendaDeleteActivity;->setAllBeforeItemChecked(Z)V

    .line 769
    invoke-direct {p0}, Lcom/android/calendar/AgendaDeleteActivity;->updateDeleteButtonStatus()V

    .line 772
    .end local v4           #checked:Z
    :cond_3f
    if-eqz v1, :cond_80

    .line 773
    iget-object v8, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v8}, Lcom/android/calendar/AgendaListView;->getHeaderViewsCount()I

    move-result v7

    .line 774
    .local v7, headerCount:I
    iget-object v8, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v8}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v8}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter;

    .line 776
    .local v0, adapter:Lcom/android/calendar/AgendaWindowAdapter;
    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v3

    .line 777
    .local v3, checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    sub-int v8, p3, v7

    invoke-virtual {v0, v8}, Lcom/android/calendar/AgendaWindowAdapter;->getEventIdByPosition(I)J

    move-result-wide v5

    .line 778
    .local v5, eventId:J
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_85

    const/4 v2, 0x1

    .line 779
    .local v2, check:Z
    :goto_66
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    .line 781
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    sub-int v9, p3, v7

    invoke-direct {p0, v8, v9}, Lcom/android/calendar/AgendaDeleteActivity;->updateAllCheckState(ZI)V

    .line 782
    invoke-direct {p0}, Lcom/android/calendar/AgendaDeleteActivity;->updateDeleteButtonStatus()V

    .line 784
    .end local v0           #adapter:Lcom/android/calendar/AgendaWindowAdapter;
    .end local v2           #check:Z
    .end local v3           #checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v5           #eventId:J
    .end local v7           #headerCount:I
    :cond_80
    return-void

    .line 759
    :cond_81
    const/4 v4, 0x0

    goto :goto_14

    .line 766
    :cond_83
    const/4 v4, 0x0

    goto :goto_34

    .line 778
    .restart local v0       #adapter:Lcom/android/calendar/AgendaWindowAdapter;
    .restart local v3       #checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v5       #eventId:J
    .restart local v7       #headerCount:I
    :cond_85
    const/4 v2, 0x0

    goto :goto_66
.end method

.method public onLoadCompleted()V
    .registers 12

    .prologue
    .line 788
    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v9}, Lcom/android/calendar/AgendaListView;->getCount()I

    move-result v1

    .line 789
    .local v1, count:I
    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    iget-object v8, v9, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    .line 791
    .local v8, windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;
    invoke-virtual {v8}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v0

    .line 792
    .local v0, checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_5e

    .line 793
    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 794
    .local v2, destCheckIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 795
    .local v5, idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 797
    .local v7, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v6, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2a
    if-ge v3, v1, :cond_3a

    .line 799
    invoke-virtual {v8, v3}, Lcom/android/calendar/AgendaWindowAdapter;->getEventIdByPosition(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 802
    :cond_3a
    :goto_3a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_50

    .line 803
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 804
    .local v4, id:Ljava/lang/Long;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    .line 805
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 808
    .end local v4           #id:Ljava/lang/Long;
    :cond_50
    invoke-virtual {v8, v2}, Lcom/android/calendar/AgendaWindowAdapter;->setCheckIds(Ljava/util/HashMap;)V

    .line 810
    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-direct {p0, v9, v10}, Lcom/android/calendar/AgendaDeleteActivity;->updateAllCheckState(ZI)V

    .line 811
    invoke-direct {p0}, Lcom/android/calendar/AgendaDeleteActivity;->updateDeleteButtonStatus()V

    .line 812
    invoke-direct {p0}, Lcom/android/calendar/AgendaDeleteActivity;->updateDeleteDailogStatus()V

    .line 814
    .end local v2           #destCheckIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v3           #i:I
    .end local v5           #idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v6           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v7           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_5e
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 662
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 667
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteRunnable:Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 675
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1100
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1102
    sparse-switch p1, :sswitch_data_3a

    .line 1130
    :goto_6
    return-void

    .line 1105
    :sswitch_7
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 1107
    const v0, 0x7f0a006a

    iput v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->eventTitle:I

    .line 1111
    :goto_15
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->eventTitle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1109
    :cond_25
    const v0, 0x7f0a006b

    iput v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->eventTitle:I

    goto :goto_15

    .line 1119
    :sswitch_2b
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    iget v1, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgressCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgress(I)V

    .line 1124
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteRunnable:Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 1102
    :sswitch_data_3a
    .sparse-switch
        0x3ed -> :sswitch_2b
        0x3fc -> :sswitch_7
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 644
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 647
    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    const-string v3, "all_check"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 648
    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    const-string v3, "before_today_check"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 649
    const-string v2, "progress"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgressCount:I

    .line 650
    const-string v2, "delete_start"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z

    .line 651
    const-string v2, "event_ids_to_delete"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 652
    .local v1, ids:[J
    if-eqz v1, :cond_47

    array-length v2, v1

    if-lez v2, :cond_47

    .line 653
    const/4 v0, 0x0

    .local v0, i:I
    :goto_36
    array-length v2, v1

    if-ge v0, v2, :cond_47

    .line 654
    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    aget-wide v3, v1, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 658
    .end local v0           #i:I
    :cond_47
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 534
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 535
    sget-boolean v0, Lcom/android/calendar/AgendaDeleteActivity;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 540
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/calendar/AgendaDeleteActivity$7;

    invoke-direct {v1, p0}, Lcom/android/calendar/AgendaDeleteActivity$7;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 607
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 8
    .parameter "outState"

    .prologue
    .line 611
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 615
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v0

    .line 616
    .local v0, firstVisibleTime:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1d

    .line 617
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 618
    const-string v4, "key_restore_time"

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 619
    sget-boolean v4, Lcom/android/calendar/AgendaDeleteActivity;->DEBUG:Z

    if-eqz v4, :cond_1d

    .line 623
    :cond_1d
    const-string v4, "all_check"

    iget-object v5, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 624
    const-string v4, "before_today_check"

    iget-object v5, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 625
    const-string v4, "delete_running"

    iget-boolean v5, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 626
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v4, :cond_49

    .line 627
    const-string v4, "progress"

    iget-object v5, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->getProgress()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 628
    :cond_49
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_78

    .line 629
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [J

    .line 630
    .local v3, ids:[J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5a
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_73

    .line 631
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 630
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 633
    :cond_73
    const-string v4, "event_ids_to_delete"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 636
    .end local v2           #i:I
    .end local v3           #ids:[J
    :cond_78
    return-void
.end method

.method public setAllBeforeItemChecked(Z)V
    .registers 19
    .parameter "bCheckStatus"

    .prologue
    .line 714
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v15}, Lcom/android/calendar/AgendaListView;->getCount()I

    move-result v5

    .line 715
    .local v5, dataCount:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v15}, Lcom/android/calendar/AgendaListView;->getHeaderViewsCount()I

    move-result v8

    .line 716
    .local v8, headerCount:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v15}, Lcom/android/calendar/AgendaListView;->getFirstVisiblePosition()I

    move-result v7

    .line 717
    .local v7, firstPosition:I
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/Utils;->getTodayMillis(Landroid/content/Context;)J

    move-result-wide v12

    .line 718
    .local v12, millis:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v15}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v15

    check-cast v15, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v15}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter;

    .line 720
    .local v2, adapter:Lcom/android/calendar/AgendaWindowAdapter;
    invoke-virtual {v2}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v4

    .line 723
    .local v4, checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/calendar/AgendaWindowAdapter;->setBeforeTodayChecked(Z)V

    .line 724
    if-nez p1, :cond_40

    .line 725
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 728
    :cond_40
    const/4 v9, 0x0

    .local v9, i:I
    :goto_41
    sub-int v15, v5, v8

    if-ge v9, v15, :cond_98

    .line 729
    const/4 v6, 0x0

    .line 730
    .local v6, eventInfo:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    invoke-virtual {v2, v9}, Lcom/android/calendar/AgendaWindowAdapter;->getEventIdByPosition(I)J

    move-result-wide v10

    .line 731
    .local v10, id:J
    const-wide/16 v15, -0x1

    cmp-long v15, v10, v15

    if-eqz v15, :cond_54

    .line 732
    invoke-virtual {v2, v9}, Lcom/android/calendar/AgendaWindowAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v6

    .line 734
    :cond_54
    if-eqz v6, :cond_8b

    iget-wide v15, v6, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    cmp-long v15, v15, v12

    if-gez v15, :cond_8b

    .line 735
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    add-int v16, v9, v8

    sub-int v16, v16, v7

    invoke-virtual/range {v15 .. v16}, Lcom/android/calendar/AgendaListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 736
    .local v14, view:Landroid/view/View;
    if-eqz v14, :cond_7a

    .line 737
    const v15, 0x7f0f001b

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 738
    .local v3, box:Landroid/widget/CheckBox;
    if-eqz v3, :cond_7a

    .line 739
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 742
    .end local v3           #box:Landroid/widget/CheckBox;
    :cond_7a
    if-eqz p1, :cond_8e

    .line 743
    iget-wide v15, v6, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    .end local v14           #view:Landroid/view/View;
    :cond_8b
    :goto_8b
    add-int/lit8 v9, v9, 0x1

    goto :goto_41

    .line 745
    .restart local v14       #view:Landroid/view/View;
    :cond_8e
    iget-wide v15, v6, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8b

    .line 748
    .end local v6           #eventInfo:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    .end local v10           #id:J
    .end local v14           #view:Landroid/view/View;
    :cond_98
    if-eqz p1, :cond_a2

    .line 749
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/calendar/AgendaDeleteActivity;->updateAllCheckState(ZI)V

    .line 750
    :cond_a2
    return-void
.end method

.method public setAllItemChecked(Z)V
    .registers 15
    .parameter "bCheckStatus"

    .prologue
    .line 679
    iget-object v11, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v11}, Lcom/android/calendar/AgendaListView;->getCount()I

    move-result v3

    .line 680
    .local v3, dataCount:I
    iget-object v11, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v11}, Lcom/android/calendar/AgendaListView;->getHeaderViewsCount()I

    move-result v6

    .line 681
    .local v6, headerCount:I
    iget-object v11, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v11}, Lcom/android/calendar/AgendaListView;->getFirstVisiblePosition()I

    move-result v5

    .line 682
    .local v5, firstPosition:I
    iget-object v11, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v11}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter;

    .line 684
    .local v0, adapter:Lcom/android/calendar/AgendaWindowAdapter;
    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v2

    .line 687
    .local v2, checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-virtual {v0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->setAllChecked(Z)V

    .line 688
    invoke-virtual {v0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->setBeforeTodayChecked(Z)V

    .line 689
    iget-object v11, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v11, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 691
    const/4 v7, 0x0

    .local v7, i:I
    :goto_30
    sub-int v11, v3, v6

    if-ge v7, v11, :cond_70

    .line 692
    invoke-virtual {v0, v7}, Lcom/android/calendar/AgendaWindowAdapter;->getEventIdByPosition(I)J

    move-result-wide v8

    .line 693
    .local v8, id:J
    const/4 v4, 0x0

    .line 694
    .local v4, eventInfo:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    const-wide/16 v11, -0x1

    cmp-long v11, v8, v11

    if-eqz v11, :cond_43

    .line 695
    invoke-virtual {v0, v7}, Lcom/android/calendar/AgendaWindowAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v4

    .line 697
    :cond_43
    if-eqz v4, :cond_6d

    .line 698
    iget-object v11, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    add-int v12, v7, v6

    sub-int/2addr v12, v5

    invoke-virtual {v11, v12}, Lcom/android/calendar/AgendaListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 700
    .local v10, view:Landroid/view/View;
    if-eqz v10, :cond_5e

    .line 701
    const v11, 0x7f0f001b

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 702
    .local v1, box:Landroid/widget/CheckBox;
    if-eqz v1, :cond_5e

    .line 703
    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 707
    .end local v1           #box:Landroid/widget/CheckBox;
    :cond_5e
    if-eqz p1, :cond_6d

    .line 708
    iget-wide v11, v4, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .end local v10           #view:Landroid/view/View;
    :cond_6d
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 711
    .end local v4           #eventInfo:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    .end local v8           #id:J
    :cond_70
    return-void
.end method

.method public updateEmtpy(Z)V
    .registers 6
    .parameter "empty"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 911
    const v0, 0x7f0f000b

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_17

    move v0, v1

    :goto_c
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 912
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    if-nez p1, :cond_19

    :goto_13
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 914
    return-void

    :cond_17
    move v0, v2

    .line 911
    goto :goto_c

    :cond_19
    move v1, v2

    .line 912
    goto :goto_13
.end method
