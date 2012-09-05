.class public Lcom/android/calendar/DayActivity;
.super Lcom/android/calendar/CalendarActivity;
.source "DayActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field private fromDay:I

.field private nextBtn:Landroid/widget/Button;

.field private prevBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/calendar/CalendarActivity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayActivity;->fromDay:I

    return-void
.end method

.method private setBodyView()V
    .registers 8

    .prologue
    .line 140
    const v5, 0x7f0f0001

    invoke-virtual {p0, v5}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/calendar/CalendarActivity;->mBodyContainer:Landroid/widget/FrameLayout;

    .line 142
    const v5, 0x7f0f0002

    invoke-virtual {p0, v5}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/calendar/CalendarActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    .line 143
    const v5, 0x7f0f0006

    invoke-virtual {p0, v5}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 144
    .local v1, listButton:Landroid/widget/Button;
    new-instance v5, Lcom/android/calendar/DayActivity$1;

    invoke-direct {v5, p0}, Lcom/android/calendar/DayActivity$1;-><init>(Lcom/android/calendar/DayActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v5, 0x7f0f0003

    invoke-virtual {p0, v5}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 157
    .local v2, monthButton:Landroid/widget/Button;
    new-instance v5, Lcom/android/calendar/DayActivity$2;

    invoke-direct {v5, p0}, Lcom/android/calendar/DayActivity$2;-><init>(Lcom/android/calendar/DayActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v5, 0x7f0f0004

    invoke-virtual {p0, v5}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 170
    .local v4, weekButton:Landroid/widget/Button;
    new-instance v5, Lcom/android/calendar/DayActivity$3;

    invoke-direct {v5, p0}, Lcom/android/calendar/DayActivity$3;-><init>(Lcom/android/calendar/DayActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v5, 0x7f0f0005

    invoke-virtual {p0, v5}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 183
    .local v0, dayButton:Landroid/widget/Button;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setSelected(Z)V

    .line 185
    new-instance v5, Lcom/android/calendar/DayActivity$4;

    invoke-direct {v5, p0}, Lcom/android/calendar/DayActivity$4;-><init>(Lcom/android/calendar/DayActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    const v5, 0x7f0f0031

    invoke-virtual {p0, v5}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 207
    .local v3, title:Landroid/view/View;
    new-instance v5, Lcom/android/calendar/DayActivity$5;

    invoke-direct {v5, p0}, Lcom/android/calendar/DayActivity$5;-><init>(Lcom/android/calendar/DayActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v5, 0x7f0f0030

    invoke-virtual {p0, v5}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/calendar/DayActivity;->prevBtn:Landroid/widget/Button;

    .line 215
    iget-object v5, p0, Lcom/android/calendar/DayActivity;->prevBtn:Landroid/widget/Button;

    new-instance v6, Lcom/android/calendar/DayActivity$6;

    invoke-direct {v6, p0}, Lcom/android/calendar/DayActivity$6;-><init>(Lcom/android/calendar/DayActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v5, 0x7f0f0034

    invoke-virtual {p0, v5}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/calendar/DayActivity;->nextBtn:Landroid/widget/Button;

    .line 230
    iget-object v5, p0, Lcom/android/calendar/DayActivity;->nextBtn:Landroid/widget/Button;

    new-instance v6, Lcom/android/calendar/DayActivity$7;

    invoke-direct {v6, p0}, Lcom/android/calendar/DayActivity$7;-><init>(Lcom/android/calendar/DayActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 301
    new-instance v0, Lcom/android/calendar/DayLayout;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayLayout;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, view:Lcom/android/calendar/DayLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayLayout;->setId(I)V

    .line 304
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayLayout;->setSelectedDay(Landroid/text/format/Time;)V

    .line 307
    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    const/4 v1, 0x1

    .line 254
    iget-object v0, p0, Lcom/android/calendar/DayActivity;->prevBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/calendar/DayActivity;->nextBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 256
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/android/calendar/DayActivity;->prevBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/calendar/DayActivity;->nextBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 250
    return-void
.end method

.method public onBackPressed()V
    .registers 6

    .prologue
    const v4, 0x7f040005

    const v3, 0x7f040004

    .line 342
    iget v0, p0, Lcom/android/calendar/DayActivity;->fromDay:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 343
    const-class v0, Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/DayActivity;->getSelectedDayInMillis()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 345
    invoke-virtual {p0}, Lcom/android/calendar/DayActivity;->finish()V

    .line 346
    invoke-virtual {p0, v3, v4}, Lcom/android/calendar/DayActivity;->overridePendingTransition(II)V

    .line 353
    :cond_1e
    :goto_1e
    invoke-super {p0}, Lcom/android/calendar/CalendarActivity;->onBackPressed()V

    .line 354
    return-void

    .line 347
    :cond_22
    iget v0, p0, Lcom/android/calendar/DayActivity;->fromDay:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 348
    const-class v0, Lcom/android/calendar/WeekActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/DayActivity;->getSelectedDayInMillis()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 350
    invoke-virtual {p0}, Lcom/android/calendar/DayActivity;->finish()V

    .line 351
    invoke-virtual {p0, v3, v4}, Lcom/android/calendar/DayActivity;->overridePendingTransition(II)V

    goto :goto_1e
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 16
    .parameter "newConfig"

    .prologue
    const v13, 0x7f0f0034

    const v12, 0x7f0f0030

    .line 261
    invoke-super {p0, p1}, Lcom/android/calendar/CalendarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 263
    invoke-virtual {p0, v12}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 264
    .local v4, prevBtn:Landroid/widget/Button;
    invoke-virtual {v4}, Landroid/widget/Button;->isEnabled()Z

    move-result v5

    .line 265
    .local v5, prevStatus:Z
    invoke-virtual {p0, v13}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 266
    .local v2, nextBtn:Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v3

    .line 268
    .local v3, nextStatus:Z
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 269
    .local v6, saveState:Landroid/os/Bundle;
    iget-object v9, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v9}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/DayLayout;

    .line 270
    .local v8, view:Lcom/android/calendar/DayLayout;
    invoke-virtual {v8, v6}, Lcom/android/calendar/DayLayout;->saveInstanceState(Landroid/os/Bundle;)V

    .line 271
    invoke-virtual {v8}, Lcom/android/calendar/DayLayout;->getEventList()Ljava/util/ArrayList;

    move-result-object v1

    .line 272
    .local v1, eventsTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v0, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_44

    .line 274
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 276
    .restart local v0       #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    :cond_44
    const-string v9, "key_restore_time"

    invoke-virtual {p0}, Lcom/android/calendar/DayActivity;->getSelectedTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 278
    const v9, 0x7f030013

    invoke-virtual {p0, v9}, Lcom/android/calendar/DayActivity;->setContentView(I)V

    .line 280
    const v9, 0x7f0f0035

    invoke-virtual {p0, v9}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ViewSwitcher;

    iput-object v9, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 281
    iget-object v9, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v9, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 282
    iget-object v9, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v9}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 284
    iget-object v9, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v9}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v8

    .end local v8           #view:Lcom/android/calendar/DayLayout;
    check-cast v8, Lcom/android/calendar/DayLayout;

    .line 285
    .restart local v8       #view:Lcom/android/calendar/DayLayout;
    new-instance v7, Landroid/text/format/Time;

    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 286
    .local v7, time:Landroid/text/format/Time;
    const-string v9, "key_restore_time"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 287
    invoke-virtual {v8, v7}, Lcom/android/calendar/DayLayout;->setSelectedDay(Landroid/text/format/Time;)V

    .line 288
    invoke-virtual {v8, v6}, Lcom/android/calendar/DayLayout;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 290
    invoke-direct {p0}, Lcom/android/calendar/DayActivity;->setBodyView()V

    .line 291
    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Lcom/android/calendar/DayLayout;->reloadCompleted(Ljava/util/ArrayList;Z)V

    .line 293
    invoke-virtual {p0, v12}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #prevBtn:Landroid/widget/Button;
    check-cast v4, Landroid/widget/Button;

    .line 294
    .restart local v4       #prevBtn:Landroid/widget/Button;
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 295
    invoke-virtual {p0, v13}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #nextBtn:Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .line 296
    .restart local v2       #nextBtn:Landroid/widget/Button;
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 298
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 21
    .parameter "icicle"

    .prologue
    .line 70
    invoke-super/range {p0 .. p1}, Lcom/android/calendar/CalendarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 73
    .local v16, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_day_view"

    sget-object v5, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 78
    .local v17, startActivityId:Ljava/lang/String;
    sget-boolean v1, Lcom/android/calendar/Utils;->CHECK_ACCOUNT:Z

    if-eqz v1, :cond_6b

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6b

    .line 80
    if-nez p1, :cond_6b

    .line 81
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v5, "com.google"

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v12

    .line 82
    .local v12, googleAccounts:[Landroid/accounts/Account;
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v5, "com.android.exchange"

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    .line 84
    .local v10, exchangeAccounts:[Landroid/accounts/Account;
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v5, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v11

    .line 86
    .local v11, facebookAccounts:[Landroid/accounts/Account;
    array-length v1, v12

    array-length v5, v10

    add-int/2addr v1, v5

    array-length v5, v11

    add-int v9, v1, v5

    .line 88
    .local v9, calendarAccountSum:I
    if-nez v9, :cond_6b

    .line 95
    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v13, intent:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    const-string v1, "authorities"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "com.android.calendar"

    aput-object v7, v5, v6

    invoke-virtual {v13, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/calendar/DayActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayActivity;->finish()V

    .line 107
    .end local v9           #calendarAccountSum:I
    .end local v10           #exchangeAccounts:[Landroid/accounts/Account;
    .end local v11           #facebookAccounts:[Landroid/accounts/Account;
    .end local v12           #googleAccounts:[Landroid/accounts/Account;
    .end local v13           #intent:Landroid/content/Intent;
    :cond_6b
    const v1, 0x7f030013

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayActivity;->setContentView(I)V

    .line 110
    if-eqz p1, :cond_f7

    .line 111
    const-string v1, "key_restore_time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 116
    .local v14, millis:J
    :goto_7d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v1, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-static {v1}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 120
    const v1, 0x7f0f0035

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayActivity;->setBodyView()V

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v18, Landroid/text/format/Time;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 132
    .local v18, weekStart:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 133
    invoke-static/range {v18 .. v18}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 134
    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 135
    .local v3, start:J
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/calendar/Event;->loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;Z)V

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/DayLayout;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/android/calendar/DayLayout;->reloadCompleted(Ljava/util/ArrayList;Z)V

    .line 137
    return-void

    .line 113
    .end local v2           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    .end local v3           #start:J
    .end local v14           #millis:J
    .end local v18           #weekStart:Landroid/text/format/Time;
    :cond_f7
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v14

    .line 114
    .restart local v14       #millis:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "startDayfromWhere"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/calendar/DayActivity;->fromDay:I

    goto/16 :goto_7d
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 332
    invoke-super {p0}, Lcom/android/calendar/CalendarActivity;->onPause()V

    .line 334
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/CalendarActivity;->KEY_FLAG:Z

    .line 336
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayLayout;

    .line 337
    .local v0, view:Lcom/android/calendar/DayLayout;
    invoke-virtual {v0}, Lcom/android/calendar/DayLayout;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 339
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/android/calendar/CalendarActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 360
    if-eqz p1, :cond_d

    .line 361
    const-string v0, "startDayfromWhere"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayActivity;->fromDay:I

    .line 363
    :cond_d
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/calendar/CalendarActivity;->onResume()V

    .line 316
    invoke-virtual {p0}, Lcom/android/calendar/DayActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/CalendarView;->updateTitle()V

    .line 318
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 319
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_day_view"

    sget-object v4, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, startActivityId:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_33

    .line 322
    sget-object v3, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v3, v4

    .line 324
    .local v1, startActivity:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/calendar/DayActivity;->getSelectedTime()J

    move-result-wide v3

    invoke-static {p0, v1, v3, v4}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 325
    invoke-virtual {p0}, Lcom/android/calendar/DayActivity;->finish()V

    .line 328
    .end local v1           #startActivity:Ljava/lang/String;
    :cond_33
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 367
    invoke-super {p0, p1}, Lcom/android/calendar/CalendarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 368
    const-string v0, "startDayfromWhere"

    iget v1, p0, Lcom/android/calendar/DayActivity;->fromDay:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 369
    return-void
.end method
