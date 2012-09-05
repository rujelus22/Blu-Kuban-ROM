.class public Lcom/android/calendar/AgendaActivity;
.super Landroid/app/Activity;
.source "AgendaActivity.java"

# interfaces
.implements Lcom/android/calendar/Navigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaActivity$DateListener;,
        Lcom/android/calendar/AgendaActivity$DateChangeListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static final EVENT_TEXT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAgendaListView:Lcom/android/calendar/AgendaInterface;

.field private mBodyContainer:Landroid/widget/LinearLayout;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCreateEvent:Landroid/view/View;

.field private mDatePicker:Landroid/app/Dialog;

.field private mDayButton:Landroid/widget/Button;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPick:Z

.field private mListButton:Landroid/widget/Button;

.field private mMonthButton:Landroid/widget/Button;

.field private mNoTitleLabel:Ljava/lang/String;

.field private mObserver:Landroid/database/ContentObserver;

.field private mSwitchContainer:Landroid/widget/LinearLayout;

.field private mTabPadding:I

.field private mTime:Landroid/text/format/Time;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mWeekButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 96
    sput-boolean v3, Lcom/android/calendar/AgendaActivity;->DEBUG:Z

    .line 141
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const-string v1, "dtstart"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "facebook_schedule_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "contactEventType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/AgendaActivity;->EVENT_TEXT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/AgendaActivity;->mIsPick:Z

    .line 171
    new-instance v0, Lcom/android/calendar/AgendaActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AgendaActivity$1;-><init>(Lcom/android/calendar/AgendaActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    .line 179
    new-instance v0, Lcom/android/calendar/AgendaActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/AgendaActivity$2;-><init>(Lcom/android/calendar/AgendaActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 191
    new-instance v0, Lcom/android/calendar/AgendaActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/AgendaActivity$3;-><init>(Lcom/android/calendar/AgendaActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mObserver:Landroid/database/ContentObserver;

    .line 1273
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/AgendaActivity;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/AgendaActivity;Landroid/text/format/Time;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/AgendaActivity;)Lcom/android/calendar/AgendaInterface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/AgendaActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->updateAddButtonStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/AgendaActivity;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mDatePicker:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/AgendaActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity;->mDatePicker:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/calendar/AgendaActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/AgendaActivity;Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaActivity;->getEventText(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/AgendaActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaActivity;->makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getEventText(Landroid/net/Uri;)Ljava/lang/String;
    .registers 21
    .parameter "uri"

    .prologue
    .line 1107
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1109
    .local v14, sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AgendaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/calendar/AgendaActivity;->EVENT_TEXT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1111
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_18

    .line 1112
    const/4 v1, 0x0

    .line 1207
    :goto_17
    return-object v1

    .line 1116
    :cond_18
    :try_start_18
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 1117
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1153
    .local v15, title:Ljava/lang/String;
    if-eqz v15, :cond_43

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_43

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    :cond_43
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1158
    .local v2, begin:J
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1159
    .local v4, end:J
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_cf

    const/4 v7, 0x1

    .line 1160
    .local v7, allDay:Z
    :goto_55
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d1

    const/4 v11, 0x1

    .line 1163
    .local v11, isFacebook:Z
    :goto_5d
    const v6, 0x18016

    .line 1166
    .local v6, flags:I
    if-eqz v7, :cond_d3

    .line 1167
    or-int/lit16 v6, v6, 0x2000

    .line 1176
    :cond_64
    :goto_64
    const-wide/16 v17, 0x0

    cmp-long v1, v4, v17

    if-nez v1, :cond_7d

    .line 1177
    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1178
    .local v9, duration:Ljava/lang/String;
    if-eqz v9, :cond_e4

    .line 1179
    new-instance v13, Lcom/android/calendar/vcal/pim/vcalendar/Duration;

    invoke-direct {v13}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;-><init>()V
    :try_end_76
    .catchall {:try_start_18 .. :try_end_76} :catchall_df

    .line 1181
    .local v13, parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :try_start_76
    invoke-virtual {v13, v9}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_df
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_76 .. :try_end_79} :catch_da

    .line 1186
    :goto_79
    :try_start_79
    invoke-virtual {v13, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->addTo(J)J

    move-result-wide v4

    .end local v9           #duration:Ljava/lang/String;
    .end local v13           #parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :cond_7d
    :goto_7d
    move-object/from16 v1, p0

    .line 1194
    invoke-static/range {v1 .. v6}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1195
    .local v16, whenString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1198
    .local v12, location:Ljava/lang/String;
    if-eqz v12, :cond_c6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c6

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c6
    .catchall {:try_start_79 .. :try_end_c6} :catchall_df

    .line 1203
    .end local v2           #begin:J
    .end local v4           #end:J
    .end local v6           #flags:I
    .end local v7           #allDay:Z
    .end local v11           #isFacebook:Z
    .end local v12           #location:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/String;
    .end local v16           #whenString:Ljava/lang/String;
    :cond_c6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1207
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_17

    .line 1159
    .restart local v2       #begin:J
    .restart local v4       #end:J
    .restart local v15       #title:Ljava/lang/String;
    :cond_cf
    const/4 v7, 0x0

    goto :goto_55

    .line 1160
    .restart local v7       #allDay:Z
    :cond_d1
    const/4 v11, 0x0

    goto :goto_5d

    .line 1169
    .restart local v6       #flags:I
    .restart local v11       #isFacebook:Z
    :cond_d3
    or-int/lit16 v6, v6, 0xb01

    .line 1171
    if-eqz v11, :cond_64

    .line 1172
    or-int/lit16 v6, v6, 0x2000

    goto :goto_64

    .line 1182
    .restart local v9       #duration:Ljava/lang/String;
    .restart local v13       #parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :catch_da
    move-exception v10

    .line 1184
    .local v10, e:Lcom/android/calendar/vcal/pim/vcalendar/DateException;
    :try_start_db
    invoke-virtual {v10}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;->printStackTrace()V
    :try_end_de
    .catchall {:try_start_db .. :try_end_de} :catchall_df

    goto :goto_79

    .line 1203
    .end local v2           #begin:J
    .end local v4           #end:J
    .end local v6           #flags:I
    .end local v7           #allDay:Z
    .end local v9           #duration:Ljava/lang/String;
    .end local v10           #e:Lcom/android/calendar/vcal/pim/vcalendar/DateException;
    .end local v11           #isFacebook:Z
    .end local v13           #parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    .end local v15           #title:Ljava/lang/String;
    :catchall_df
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1188
    .restart local v2       #begin:J
    .restart local v4       #end:J
    .restart local v6       #flags:I
    .restart local v7       #allDay:Z
    .restart local v9       #duration:Ljava/lang/String;
    .restart local v11       #isFacebook:Z
    .restart local v15       #title:Ljava/lang/String;
    :cond_e4
    move-wide v4, v2

    goto :goto_7d
.end method

.method private makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1211
    new-instance v1, Lcom/android/calendar/vcal/VCalManager;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/vcal/VCalManager;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1214
    invoke-virtual {v1}, Lcom/android/calendar/vcal/VCalManager;->getData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    .line 1236
    :goto_c
    return-object v0

    .line 1216
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invite"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".vcs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1217
    invoke-virtual {v1}, Lcom/android/calendar/vcal/VCalManager;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1227
    :try_start_32
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1228
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/calendar/AgendaActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1229
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1230
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1231
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_49} :catch_4b

    move-result-object v0

    goto :goto_c

    .line 1232
    :catch_4b
    move-exception v1

    .line 1233
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method private setBodyView()V
    .registers 5

    .prologue
    const v3, 0x7f0f0009

    const v2, 0x7f0f0008

    const/16 v1, 0x8

    .line 260
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->setContentView(I)V

    .line 262
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 263
    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    invoke-virtual {p0, v3}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaListView;

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    .line 265
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v0, Lcom/android/calendar/AgendaListView;

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v1, Lcom/android/calendar/AgendaListView;

    invoke-virtual {v1}, Lcom/android/calendar/AgendaListView;->getWindowAdapter()Lcom/android/calendar/AgendaWindowAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 267
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->setupPickView()V

    .line 282
    :goto_34
    const v0, 0x7f0f007c

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mCreateEvent:Landroid/view/View;

    .line 283
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mCreateEvent:Landroid/view/View;

    new-instance v1, Lcom/android/calendar/AgendaActivity$4;

    invoke-direct {v1, p0}, Lcom/android/calendar/AgendaActivity$4;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    return-void

    .line 269
    :cond_48
    invoke-virtual {p0, v3}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaExpandableListView;

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    .line 272
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v0, Lcom/android/calendar/AgendaExpandableListView;

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v1, Lcom/android/calendar/AgendaExpandableListView;

    invoke-virtual {v1}, Lcom/android/calendar/AgendaExpandableListView;->getExpandableListAdapter()Lcom/android/calendar/AgendaExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 273
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v0, Lcom/android/calendar/AgendaExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 275
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->setupTabView()V

    .line 276
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_82

    .line 277
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->setEmptyListLandscapeLayout()V

    goto :goto_34

    .line 279
    :cond_82
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->setEmptyListPortraitLayout()V

    goto :goto_34
.end method

.method private setEmptyListLandscapeLayout()V
    .registers 4

    .prologue
    .line 400
    const v2, 0x7f0f007c

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 401
    .local v0, createEvent:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 403
    .local v1, layout:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 404
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    return-void
.end method

.method private setEmptyListPortraitLayout()V
    .registers 5

    .prologue
    .line 332
    const v2, 0x7f0f007c

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 333
    .local v0, createEvent:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 335
    .local v1, layout:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 336
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    return-void
.end method

.method private setEventList()V
    .registers 8

    .prologue
    .line 534
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 535
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "preferences_hide_declined"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 537
    .local v1, hideDeclined:Z
    iget-object v4, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    invoke-interface {v4, v1}, Lcom/android/calendar/AgendaInterface;->setHideDeclinedEvents(Z)V

    .line 540
    iget-object v4, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    iget-object v5, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/android/calendar/AgendaInterface;->goTo(Landroid/text/format/Time;Z)V

    .line 542
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 543
    iget-object v4, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v4, Lcom/android/calendar/AgendaListView;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaListView;->getWindowAdapter()Lcom/android/calendar/AgendaWindowAdapter;

    move-result-object v3

    .line 547
    .local v3, windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;
    :try_start_26
    invoke-virtual {p0, v3}, Lcom/android/calendar/AgendaActivity;->windowOnLoadLoadCompleted(Lcom/android/calendar/AgendaWindowAdapter;)V
    :try_end_29
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 554
    .end local v3           #windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;
    :cond_29
    :goto_29
    return-void

    .line 548
    .restart local v3       #windowAdapter:Lcom/android/calendar/AgendaWindowAdapter;
    :catch_2a
    move-exception v0

    .line 550
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v3}, Lcom/android/calendar/AgendaActivity;->windowOnLoadLoadCompleted(Lcom/android/calendar/AgendaWindowAdapter;)V

    goto :goto_29
.end method

.method private setLandscapeLayout()V
    .registers 16

    .prologue
    const v13, 0x7f02006b

    const/4 v14, 0x0

    .line 408
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 410
    .local v5, r:Landroid/content/res/Resources;
    const v11, 0x7f090017

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v9, v11

    .line 411
    .local v9, tab_width:I
    const v11, 0x7f09003d

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v7, v11

    .line 412
    .local v7, tab_height_1:I
    const v11, 0x7f09003e

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    .line 414
    .local v8, tab_height_2:I
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mBodyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 416
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 418
    .local v6, switchLayout:Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 419
    const/4 v11, -0x1

    iput v11, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 422
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 424
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    const v12, 0x7f020075

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    const v12, 0x7f020085

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    iget v12, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    iget v13, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    invoke-virtual {v11, v14, v12, v14, v13}, Landroid/widget/Button;->setPadding(IIII)V

    .line 434
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 435
    .local v4, monthLayout:Landroid/view/ViewGroup$LayoutParams;
    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 436
    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 437
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    invoke-virtual {v11, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    iget v12, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    iget v13, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    invoke-virtual {v11, v14, v12, v14, v13}, Landroid/widget/Button;->setPadding(IIII)V

    .line 440
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 441
    .local v10, weekLayout:Landroid/view/ViewGroup$LayoutParams;
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 442
    iput v7, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 443
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    invoke-virtual {v11, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    iget v12, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    iget v13, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    invoke-virtual {v11, v14, v12, v14, v13}, Landroid/widget/Button;->setPadding(IIII)V

    .line 446
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 447
    .local v1, dayLayout:Landroid/view/ViewGroup$LayoutParams;
    iput v9, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 448
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 449
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    invoke-virtual {v11, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    iget v12, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    iget v13, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    invoke-virtual {v11, v14, v12, v14, v13}, Landroid/widget/Button;->setPadding(IIII)V

    .line 452
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 453
    .local v3, listLayout:Landroid/view/ViewGroup$LayoutParams;
    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 454
    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 455
    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    const v11, 0x7f0f007c

    invoke-virtual {p0, v11}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 461
    .local v0, createEvent:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 463
    .local v2, layout:Landroid/widget/LinearLayout$LayoutParams;
    iput v14, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 464
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    return-void
.end method

.method private setPortraitLayout()V
    .registers 15

    .prologue
    const v12, 0x7f02006b

    const/4 v13, 0x0

    .line 340
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 342
    .local v5, r:Landroid/content/res/Resources;
    const v10, 0x7f090017

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v8, v10

    .line 343
    .local v8, tab_width:I
    const v10, 0x7f090018

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    .line 345
    .local v7, tab_height:I
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mBodyContainer:Landroid/widget/LinearLayout;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 347
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 349
    .local v6, switchLayout:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, -0x1

    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 350
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 351
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 352
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    const v11, 0x7f020075

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setGravity(I)V

    .line 357
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    const v11, 0x7f020085

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    iget v11, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    iget v12, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    invoke-virtual {v10, v13, v11, v13, v12}, Landroid/widget/Button;->setPadding(IIII)V

    .line 363
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 364
    .local v4, monthLayout:Landroid/view/ViewGroup$LayoutParams;
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 365
    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 366
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    iget v11, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    iget v12, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    invoke-virtual {v10, v13, v11, v13, v12}, Landroid/widget/Button;->setPadding(IIII)V

    .line 369
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 370
    .local v9, weekLayout:Landroid/view/ViewGroup$LayoutParams;
    iput v8, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 371
    iput v7, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 372
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    invoke-virtual {v10, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    iget v11, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    iget v12, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    invoke-virtual {v10, v13, v11, v13, v12}, Landroid/widget/Button;->setPadding(IIII)V

    .line 375
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 376
    .local v1, dayLayout:Landroid/view/ViewGroup$LayoutParams;
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 377
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 378
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    iget v11, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    iget v12, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    invoke-virtual {v10, v13, v11, v13, v12}, Landroid/widget/Button;->setPadding(IIII)V

    .line 381
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 382
    .local v3, listLayout:Landroid/view/ViewGroup$LayoutParams;
    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 383
    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 384
    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    const v10, 0x7f0f007c

    invoke-virtual {p0, v10}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 392
    .local v0, createEvent:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 394
    .local v2, layout:Landroid/widget/LinearLayout$LayoutParams;
    const v10, 0x7f090029

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 395
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    return-void
.end method

.method private setupPickView()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 958
    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v2, Lcom/android/calendar/AgendaListView;

    invoke-virtual {v2, v4}, Lcom/android/calendar/AgendaListView;->setItemsCanFocus(Z)V

    .line 959
    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v2, Lcom/android/calendar/AgendaListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/calendar/AgendaListView;->setChoiceMode(I)V

    .line 960
    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v2, Lcom/android/calendar/AgendaListView;

    new-instance v3, Lcom/android/calendar/AgendaActivity$11;

    invoke-direct {v3, p0}, Lcom/android/calendar/AgendaActivity$11;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/calendar/AgendaListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 990
    const v2, 0x7f0f0002

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 991
    const v2, 0x7f0f00c8

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 993
    const v2, 0x7f0f00c9

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 994
    .local v0, addButton:Landroid/widget/Button;
    const v2, 0x7f0a0093

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 995
    new-instance v2, Lcom/android/calendar/AgendaActivity$12;

    invoke-direct {v2, p0}, Lcom/android/calendar/AgendaActivity$12;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1097
    const v2, 0x7f0f00ca

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1098
    .local v1, cancelButton:Landroid/widget/Button;
    const v2, 0x7f0a0094

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1099
    new-instance v2, Lcom/android/calendar/AgendaActivity$13;

    invoke-direct {v2, p0}, Lcom/android/calendar/AgendaActivity$13;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    return-void
.end method

.method private setupTabView()V
    .registers 3

    .prologue
    .line 866
    const v0, 0x7f0f0001

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mBodyContainer:Landroid/widget/LinearLayout;

    .line 867
    const v0, 0x7f0f0002

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    .line 869
    const v0, 0x7f0f0006

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    .line 870
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 871
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/AgendaActivity$7;

    invoke-direct {v1, p0}, Lcom/android/calendar/AgendaActivity$7;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 892
    const v0, 0x7f0f0005

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    .line 893
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/AgendaActivity$8;

    invoke-direct {v1, p0}, Lcom/android/calendar/AgendaActivity$8;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 910
    const v0, 0x7f0f0004

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    .line 911
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/AgendaActivity$9;

    invoke-direct {v1, p0}, Lcom/android/calendar/AgendaActivity$9;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    const v0, 0x7f0f0003

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    .line 924
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/AgendaActivity$10;

    invoke-direct {v1, p0}, Lcom/android/calendar/AgendaActivity$10;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    return-void
.end method

.method private updateAddButtonStatus()V
    .registers 13

    .prologue
    .line 941
    iget-object v8, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v8, Lcom/android/calendar/AgendaListView;

    invoke-virtual {v8}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter;

    .line 942
    .local v0, adapter:Lcom/android/calendar/AgendaWindowAdapter;
    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v3

    .line 943
    .local v3, checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 944
    .local v5, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 945
    .local v7, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 946
    .local v6, isEnable:Z
    :cond_17
    :goto_17
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 947
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 948
    .local v4, id:Ljava/lang/Long;
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 949
    .local v2, check:Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_17

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_17

    .line 950
    const/4 v6, 0x1

    goto :goto_17

    .line 953
    .end local v2           #check:Ljava/lang/Boolean;
    .end local v4           #id:Ljava/lang/Long;
    :cond_3e
    const v8, 0x7f0f00c9

    invoke-virtual {p0, v8}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 954
    .local v1, addButton:Landroid/widget/Button;
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 955
    return-void
.end method


# virtual methods
.method public getAgendaAdapter()Lcom/android/calendar/AgendaWindowAdapter;
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v0, Lcom/android/calendar/AgendaListView;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaListView;->getWindowAdapter()Lcom/android/calendar/AgendaWindowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAllDay()Z
    .registers 2

    .prologue
    .line 851
    const/4 v0, 0x0

    return v0
.end method

.method public getEndMillis()J
    .registers 3

    .prologue
    .line 1309
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFirstJulianDay()I
    .registers 2

    .prologue
    .line 1319
    const/4 v0, 0x0

    return v0
.end method

.method public getLastJulianDay()I
    .registers 2

    .prologue
    .line 1324
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedDayInMillis()J
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 837
    new-instance v2, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 838
    .local v2, time:Landroid/text/format/Time;
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    invoke-interface {v3}, Lcom/android/calendar/AgendaInterface;->getSelectedTime()J

    move-result-wide v0

    .line 839
    .local v0, millis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_1e

    .line 840
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 842
    :cond_1e
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 843
    iput v5, v2, Landroid/text/format/Time;->minute:I

    .line 844
    iput v5, v2, Landroid/text/format/Time;->second:I

    .line 845
    iput v5, v2, Landroid/text/format/Time;->hour:I

    .line 847
    invoke-virtual {v2, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    return-wide v3
.end method

.method public getSelectedTime()J
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 811
    new-instance v3, Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 812
    .local v3, time:Landroid/text/format/Time;
    iget-object v5, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    invoke-interface {v5}, Lcom/android/calendar/AgendaInterface;->getSelectedTime()J

    move-result-wide v0

    .line 813
    .local v0, millis:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-nez v5, :cond_1e

    .line 814
    iget-object v5, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v5, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 816
    :cond_1e
    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 818
    iget-object v5, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    iget-wide v5, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v5, v6}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    .line 819
    .local v2, selectedDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    iget-wide v7, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v7, v8}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v4

    .line 820
    .local v4, today:I
    if-ne v2, v4, :cond_4d

    .line 821
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 822
    iget v5, v3, Landroid/text/format/Time;->hour:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/text/format/Time;->hour:I

    .line 827
    :goto_44
    iput v9, v3, Landroid/text/format/Time;->minute:I

    .line 828
    iput v9, v3, Landroid/text/format/Time;->second:I

    .line 832
    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    return-wide v5

    .line 825
    :cond_4d
    const/16 v5, 0x8

    iput v5, v3, Landroid/text/format/Time;->hour:I

    goto :goto_44
.end method

.method public getStartMillis()J
    .registers 3

    .prologue
    .line 1314
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public goTo(Landroid/text/format/Time;ZZ)V
    .registers 6
    .parameter "time"
    .parameter "animate"
    .parameter "doScroll"

    .prologue
    .line 801
    invoke-static {p1}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 806
    :goto_6
    return-void

    .line 805
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/calendar/AgendaInterface;->goTo(Landroid/text/format/Time;Z)V

    goto :goto_6
.end method

.method public goToToday()V
    .registers 4

    .prologue
    .line 791
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 792
    .local v0, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 793
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/calendar/AgendaActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 794
    return-void
.end method

.method protected isPick()Z
    .registers 2

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/android/calendar/AgendaActivity;->mIsPick:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1291
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1293
    const/4 v0, 0x1

    if-ne p1, v0, :cond_27

    const/4 v0, -0x1

    if-ne p2, v0, :cond_27

    .line 1294
    const-string v0, "date"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1296
    const-string v0, "allday"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1297
    if-eqz v0, :cond_28

    .line 1298
    new-instance v0, Landroid/text/format/Time;

    const-string v3, "UTC"

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1302
    :goto_21
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1303
    invoke-virtual {p0, v0, v4, v4}, Lcom/android/calendar/AgendaActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 1305
    :cond_27
    return-void

    .line 1300
    :cond_28
    new-instance v0, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto :goto_21
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 329
    :goto_9
    return-void

    .line 320
    :cond_a
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 321
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->setLandscapeLayout()V

    .line 327
    :goto_12
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/calendar/AgendaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 328
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mDatePicker:Landroid/app/Dialog;

    invoke-static {v1, p1, v0}, Lcom/android/calendar/Utils;->hideSIP(Landroid/app/Dialog;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputMethodManager;)V

    goto :goto_9

    .line 323
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_20
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->setPortraitLayout()V

    goto :goto_12
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    const-wide/16 v7, 0x0

    .line 205
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 211
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    const-wide/32 v5, 0x400000

    invoke-virtual {v4, v5, v6}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 213
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_95

    const-string v4, "android.intent.action.PICK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 215
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/calendar/AgendaActivity;->mIsPick:Z

    .line 220
    :goto_24
    const-wide/16 v1, 0x0

    .line 222
    .local v1, millis:J
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    .line 223
    if-eqz p1, :cond_3f

    .line 225
    const-string v4, "key_restore_time"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 226
    sget-boolean v4, Lcom/android/calendar/AgendaActivity;->DEBUG:Z

    if-eqz v4, :cond_3f

    .line 231
    :cond_3f
    cmp-long v4, v1, v7

    if-nez v4, :cond_5f

    .line 233
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "beginTime"

    invoke-virtual {v4, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 234
    sget-boolean v4, Lcom/android/calendar/AgendaActivity;->DEBUG:Z

    if-eqz v4, :cond_5f

    .line 235
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 236
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 241
    .end local v3           #time:Landroid/text/format/Time;
    :cond_5f
    cmp-long v4, v1, v7

    if-nez v4, :cond_6b

    .line 242
    sget-boolean v4, Lcom/android/calendar/AgendaActivity;->DEBUG:Z

    if-eqz v4, :cond_67

    .line 245
    :cond_67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 247
    :cond_6b
    iget-object v4, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 249
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/AgendaActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 250
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->setBodyView()V

    .line 253
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/AgendaActivity;->mNoTitleLabel:Ljava/lang/String;

    .line 255
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    .line 257
    return-void

    .line 217
    .end local v1           #millis:J
    :cond_95
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/calendar/AgendaActivity;->mIsPick:Z

    goto :goto_24
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 724
    sparse-switch p1, :sswitch_data_5e

    .line 772
    :goto_4
    return-object v1

    .line 726
    :sswitch_5
    new-instance v7, Landroid/text/format/Time;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 727
    .local v7, time:Landroid/text/format/Time;
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getSelectedTime()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 743
    new-instance v0, Lcom/android/calendar/TwDatePickerDialog;

    new-instance v2, Lcom/android/calendar/AgendaActivity$DateListener;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/AgendaActivity$DateListener;-><init>(Lcom/android/calendar/AgendaActivity;Lcom/android/calendar/AgendaActivity$1;)V

    iget v3, v7, Landroid/text/format/Time;->year:I

    iget v4, v7, Landroid/text/format/Time;->month:I

    iget v5, v7, Landroid/text/format/Time;->monthDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/TwDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 745
    .local v0, twd:Lcom/android/calendar/TwDatePickerDialog;
    invoke-virtual {v0}, Lcom/android/calendar/TwDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    iget v2, v7, Landroid/text/format/Time;->year:I

    iget v3, v7, Landroid/text/format/Time;->month:I

    iget v4, v7, Landroid/text/format/Time;->monthDay:I

    new-instance v5, Lcom/android/calendar/AgendaActivity$DateChangeListener;

    invoke-direct {v5, p0}, Lcom/android/calendar/AgendaActivity$DateChangeListener;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 746
    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mDatePicker:Landroid/app/Dialog;

    .line 749
    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mDatePicker:Landroid/app/Dialog;

    new-instance v2, Lcom/android/calendar/AgendaActivity$6;

    invoke-direct {v2, p0}, Lcom/android/calendar/AgendaActivity$6;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 755
    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mDatePicker:Landroid/app/Dialog;

    goto :goto_4

    .line 757
    .end local v0           #twd:Lcom/android/calendar/TwDatePickerDialog;
    .end local v7           #time:Landroid/text/format/Time;
    :sswitch_47
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 758
    .local v6, alert:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0095

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 760
    const v2, 0x7f0a0076

    invoke-virtual {v6, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 766
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4

    .line 724
    nop

    :sswitch_data_5e
    .sparse-switch
        0x101 -> :sswitch_5
        0x3e8 -> :sswitch_47
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_17

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 668
    :goto_12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 666
    :cond_17
    invoke-static {p0, p1}, Lcom/android/calendar/MenuHelper;->onCreateOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)Z

    goto :goto_12
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 777
    packed-switch p1, :pswitch_data_8

    .line 786
    :pswitch_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 777
    :pswitch_data_8
    .packed-switch 0x43
        :pswitch_3
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 469
    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v0

    .line 470
    .local v0, time:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_15

    .line 471
    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 472
    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/calendar/AgendaActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 474
    :cond_15
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 673
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 682
    invoke-static {p0, p1, p0}, Lcom/android/calendar/MenuHelper;->onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/android/calendar/Navigator;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 686
    :goto_e
    return v0

    .line 675
    :pswitch_f
    const/16 v1, 0x101

    invoke-virtual {p0, v1}, Lcom/android/calendar/AgendaActivity;->showDialog(I)V

    goto :goto_e

    .line 686
    :cond_15
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_e

    .line 673
    :pswitch_data_1a
    .packed-switch 0xc
        :pswitch_f
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 644
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 646
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    invoke-interface {v0}, Lcom/android/calendar/AgendaInterface;->onPause()V

    .line 647
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 648
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 652
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 7
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 691
    packed-switch p1, :pswitch_data_22

    .line 718
    .end local p2
    :goto_3
    return-void

    .line 693
    .restart local p2
    :pswitch_4
    new-instance v0, Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 694
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getSelectedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 711
    check-cast p2, Landroid/app/DatePickerDialog;

    .end local p2
    iget v1, v0, Landroid/text/format/Time;->year:I

    iget v2, v0, Landroid/text/format/Time;->month:I

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p2, v1, v2, v3}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_3

    .line 691
    nop

    :pswitch_data_22
    .packed-switch 0x101
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 656
    invoke-static {p0, p1}, Lcom/android/calendar/MenuHelper;->onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 657
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 478
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 479
    sget-boolean v1, Lcom/android/calendar/AgendaActivity;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 483
    :cond_7
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->setEventList()V

    .line 519
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 520
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/AgendaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 524
    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 526
    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/calendar/AgendaActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 529
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 629
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 640
    return-void
.end method

.method protected windowOnLoadLoadCompleted(Lcom/android/calendar/AgendaWindowAdapter;)V
    .registers 3
    .parameter "windowAdapter"

    .prologue
    .line 557
    new-instance v0, Lcom/android/calendar/AgendaActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/AgendaActivity$5;-><init>(Lcom/android/calendar/AgendaActivity;Lcom/android/calendar/AgendaWindowAdapter;)V

    invoke-virtual {p1, v0}, Lcom/android/calendar/AgendaWindowAdapter;->setOnLoadCompleteListener(Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;)V

    .line 624
    return-void
.end method
