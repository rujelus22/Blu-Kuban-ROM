.class public Lcom/android/calendar/event/EditEventActivity;
.super Lcom/android/calendar/AbstractCalendarActivity;
.source "EditEventActivity.java"


# static fields
.field private static mIsMultipane:Z


# instance fields
.field private mEditFragment:Lcom/android/calendar/event/EditEventFragment;

.field private mEventInfo:Lcom/android/calendar/CalendarController$EventInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/calendar/AbstractCalendarActivity;-><init>()V

    return-void
.end method

.method private getEventInfoFromIntent(Landroid/os/Bundle;)Lcom/android/calendar/CalendarController$EventInfo;
    .registers 16
    .parameter "icicle"

    .prologue
    const-wide/16 v12, -0x1

    .line 95
    new-instance v8, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v8}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 96
    .local v8, info:Lcom/android/calendar/CalendarController$EventInfo;
    const-wide/16 v6, -0x1

    .line 97
    .local v6, eventId:J
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 98
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 99
    .local v3, data:Landroid/net/Uri;
    if-eqz v3, :cond_67

    .line 101
    :try_start_13
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1a} :catch_7d

    move-result-wide v6

    .line 111
    :cond_1b
    :goto_1b
    const-string v10, "allDay"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 113
    .local v0, allDay:Z
    const-string v10, "beginTime"

    invoke-virtual {v9, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 114
    .local v1, begin:J
    const-string v10, "endTime"

    invoke-virtual {v9, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 115
    .local v4, end:J
    cmp-long v10, v4, v12

    if-eqz v10, :cond_46

    .line 116
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, v8, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 117
    if-eqz v0, :cond_41

    .line 118
    iget-object v10, v8, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const-string v11, "UTC"

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 120
    :cond_41
    iget-object v10, v8, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v10, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 122
    :cond_46
    cmp-long v10, v1, v12

    if-eqz v10, :cond_5e

    .line 123
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, v8, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 124
    if-eqz v0, :cond_59

    .line 125
    iget-object v10, v8, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const-string v11, "UTC"

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 127
    :cond_59
    iget-object v10, v8, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v10, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 129
    :cond_5e
    iput-wide v6, v8, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    .line 131
    if-eqz v0, :cond_78

    .line 132
    const-wide/16 v10, 0x10

    iput-wide v10, v8, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    .line 136
    :goto_66
    return-object v8

    .line 107
    .end local v0           #allDay:Z
    .end local v1           #begin:J
    .end local v4           #end:J
    :cond_67
    if-eqz p1, :cond_1b

    const-string v10, "key_event_id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 108
    const-string v10, "key_event_id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_1b

    .line 134
    .restart local v0       #allDay:Z
    .restart local v1       #begin:J
    .restart local v4       #end:J
    :cond_78
    const-wide/16 v10, 0x0

    iput-wide v10, v8, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    goto :goto_66

    .line 102
    .end local v0           #allDay:Z
    .end local v1           #begin:J
    .end local v4           #end:J
    :catch_7d
    move-exception v10

    goto :goto_1b
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    const-wide/16 v8, -0x1

    const v7, 0x7f1000a4

    const/4 v6, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v2, 0x7f040030

    invoke-virtual {p0, v2}, Lcom/android/calendar/event/EditEventActivity;->setContentView(I)V

    .line 56
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventActivity;->getEventInfoFromIntent(Landroid/os/Bundle;)Lcom/android/calendar/CalendarController$EventInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEventInfo:Lcom/android/calendar/CalendarController$EventInfo;

    .line 58
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/event/EditEventFragment;

    iput-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    .line 60
    const v2, 0x7f090007

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    sput-boolean v2, Lcom/android/calendar/event/EditEventActivity;->mIsMultipane:Z

    .line 62
    sget-boolean v2, Lcom/android/calendar/event/EditEventActivity;->mIsMultipane:Z

    if-eqz v2, :cond_8d

    .line 63
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x8

    const/16 v4, 0xe

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 67
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEventInfo:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v4, v2, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    cmp-long v2, v4, v8

    if-nez v2, :cond_89

    const v2, 0x7f0c000f

    :goto_48
    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 76
    :goto_4b
    iget-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    if-nez v2, :cond_88

    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEventInfo:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v2, v2, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_5c

    .line 79
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 82
    :cond_5c
    new-instance v2, Lcom/android/calendar/event/EditEventFragment;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventActivity;->mEventInfo:Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v2, v3, v6, v1}, Lcom/android/calendar/event/EditEventFragment;-><init>(Lcom/android/calendar/CalendarController$EventInfo;ZLandroid/content/Intent;)V

    iput-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    .line 84
    iget-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "editMode"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/calendar/event/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 88
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v0, v7, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 89
    iget-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 90
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 92
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_88
    return-void

    .line 67
    :cond_89
    const v2, 0x7f0c0010

    goto :goto_48

    .line 71
    :cond_8d
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x10

    const/16 v4, 0x1e

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_4b
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 142
    invoke-static {p0}, Lcom/android/calendar/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method
