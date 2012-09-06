.class public Lcom/android/calendar/EventInfoActivity;
.super Landroid/app/Activity;
.source "EventInfoActivity.java"


# instance fields
.field private mEndMillis:J

.field private mEventId:J

.field private mInfoFragment:Lcom/android/calendar/EventInfoFragment;

.field private mStartMillis:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 20
    .parameter "icicle"

    .prologue
    .line 43
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f040030

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->setContentView(I)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1000a4

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 54
    .local v17, intent:Landroid/content/Intent;
    const/4 v9, 0x0

    .line 55
    .local v9, attendeeResponse:I
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    .line 56
    const/4 v10, 0x0

    .line 58
    .local v10, isDialog:Z
    if-eqz p1, :cond_a0

    .line 59
    const-string v1, "key_event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    .line 60
    const-string v1, "key_start_millis"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    .line 61
    const-string v1, "key_end_millis"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    .line 62
    const-string v1, "key_attendee_response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 63
    const-string v1, "key_fragment_is_dialog"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 79
    :cond_5e
    :goto_5e
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    .line 80
    .local v12, bar:Landroid/app/ActionBar;
    if-eqz v12, :cond_68

    .line 81
    const/4 v1, 0x6

    invoke-virtual {v12, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 85
    :cond_68
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    if-nez v1, :cond_9f

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v15

    .line 87
    .local v15, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v15}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v16

    .line 88
    .local v16, ft:Landroid/app/FragmentTransaction;
    new-instance v1, Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    if-eqz v10, :cond_f1

    const/4 v11, 0x1

    :goto_87
    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    .line 92
    const v1, 0x7f1000a4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 93
    invoke-virtual/range {v16 .. v16}, Landroid/app/FragmentTransaction;->commit()I

    .line 95
    .end local v15           #fragmentManager:Landroid/app/FragmentManager;
    .end local v16           #ft:Landroid/app/FragmentTransaction;
    :cond_9f
    return-void

    .line 64
    .end local v12           #bar:Landroid/app/ActionBar;
    :cond_a0
    if-eqz v17, :cond_5e

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 65
    const-string v1, "beginTime"

    const-wide/16 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    .line 66
    const-string v1, "endTime"

    const-wide/16 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    .line 67
    const-string v1, "attendeeResponse"

    const/4 v2, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 68
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 69
    .local v13, data:Landroid/net/Uri;
    if-eqz v13, :cond_5e

    .line 71
    :try_start_d9
    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J
    :try_end_e5
    .catch Ljava/lang/NumberFormatException; {:try_start_d9 .. :try_end_e5} :catch_e7

    goto/16 :goto_5e

    .line 72
    :catch_e7
    move-exception v14

    .line 73
    .local v14, e:Ljava/lang/NumberFormatException;
    const-string v1, "EventInfoActivity"

    const-string v2, "No event id"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 88
    .end local v13           #data:Landroid/net/Uri;
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v12       #bar:Landroid/app/ActionBar;
    .restart local v15       #fragmentManager:Landroid/app/FragmentManager;
    .restart local v16       #ft:Landroid/app/FragmentTransaction;
    :cond_f1
    const/4 v11, 0x0

    goto :goto_87
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 174
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/android/calendar/EventInfoActivity;->setIntent(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 169
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 164
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    return-void
.end method
