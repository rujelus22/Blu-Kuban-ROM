.class public Lcom/android/calendar/WeekActivity;
.super Lcom/android/calendar/CalendarActivity;
.source "WeekActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# static fields
.field static eventTitles:[Ljava/lang/CharSequence;


# instance fields
.field private nextBtn:Landroid/widget/Button;

.field private prevBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/calendar/CalendarActivity;-><init>()V

    return-void
.end method

.method private setBodyView()V
    .registers 8

    .prologue
    .line 96
    const v5, 0x7f0f0002

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/calendar/CalendarActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    .line 97
    const v5, 0x7f0f0031

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 98
    .local v3, title:Landroid/view/View;
    new-instance v5, Lcom/android/calendar/WeekActivity$1;

    invoke-direct {v5, p0}, Lcom/android/calendar/WeekActivity$1;-><init>(Lcom/android/calendar/WeekActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v5, 0x7f0f0030

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/calendar/WeekActivity;->prevBtn:Landroid/widget/Button;

    .line 106
    iget-object v5, p0, Lcom/android/calendar/WeekActivity;->prevBtn:Landroid/widget/Button;

    new-instance v6, Lcom/android/calendar/WeekActivity$2;

    invoke-direct {v6, p0}, Lcom/android/calendar/WeekActivity$2;-><init>(Lcom/android/calendar/WeekActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v5, 0x7f0f0034

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/calendar/WeekActivity;->nextBtn:Landroid/widget/Button;

    .line 120
    iget-object v5, p0, Lcom/android/calendar/WeekActivity;->nextBtn:Landroid/widget/Button;

    new-instance v6, Lcom/android/calendar/WeekActivity$3;

    invoke-direct {v6, p0}, Lcom/android/calendar/WeekActivity$3;-><init>(Lcom/android/calendar/WeekActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v5, 0x7f0f0006

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 134
    .local v1, listbutton:Landroid/widget/Button;
    new-instance v5, Lcom/android/calendar/WeekActivity$4;

    invoke-direct {v5, p0}, Lcom/android/calendar/WeekActivity$4;-><init>(Lcom/android/calendar/WeekActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v5, 0x7f0f0005

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 147
    .local v0, dayButton:Landroid/widget/Button;
    new-instance v5, Lcom/android/calendar/WeekActivity$5;

    invoke-direct {v5, p0}, Lcom/android/calendar/WeekActivity$5;-><init>(Lcom/android/calendar/WeekActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v5, 0x7f0f0003

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 165
    .local v2, monthbutton:Landroid/widget/Button;
    new-instance v5, Lcom/android/calendar/WeekActivity$6;

    invoke-direct {v5, p0}, Lcom/android/calendar/WeekActivity$6;-><init>(Lcom/android/calendar/WeekActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v5, 0x7f0f0004

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 178
    .local v4, weekButton:Landroid/widget/Button;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setSelected(Z)V

    .line 180
    new-instance v5, Lcom/android/calendar/WeekActivity$7;

    invoke-direct {v5, p0}, Lcom/android/calendar/WeekActivity$7;-><init>(Lcom/android/calendar/WeekActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    const v5, 0x7f0f0001

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/calendar/CalendarActivity;->mBodyContainer:Landroid/widget/FrameLayout;

    .line 201
    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 247
    new-instance v0, Lcom/android/calendar/WeekView;

    invoke-direct {v0, p0}, Lcom/android/calendar/WeekView;-><init>(Lcom/android/calendar/CalendarActivity;)V

    .line 248
    .local v0, wv:Lcom/android/calendar/WeekView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/WeekView;->setId(I)V

    .line 249
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/WeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/WeekView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 252
    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    const/4 v1, 0x1

    .line 211
    iget-object v0, p0, Lcom/android/calendar/WeekActivity;->prevBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/calendar/WeekActivity;->nextBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 213
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/android/calendar/WeekActivity;->prevBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/calendar/WeekActivity;->nextBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 207
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10
    .parameter "newConfig"

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/android/calendar/CalendarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 219
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 220
    .local v2, saveState:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/calendar/WeekActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v4

    .line 221
    .local v4, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v4, v2}, Lcom/android/calendar/CalendarView;->saveInstanceState(Landroid/os/Bundle;)V

    .line 222
    invoke-virtual {v4}, Lcom/android/calendar/CalendarView;->getEventList()Ljava/util/ArrayList;

    move-result-object v1

    .line 223
    .local v1, eventsTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_26

    .line 225
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 226
    .restart local v0       #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    :cond_26
    const-string v5, "key_restore_time"

    invoke-virtual {p0}, Lcom/android/calendar/WeekActivity;->getSelectedTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 227
    iget-object v5, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 229
    const v5, 0x7f03003b

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->setContentView(I)V

    .line 231
    const v5, 0x7f0f0035

    invoke-virtual {p0, v5}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewSwitcher;

    iput-object v5, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 232
    iget-object v5, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 233
    iget-object v5, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 235
    invoke-virtual {p0}, Lcom/android/calendar/WeekActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v4

    .line 236
    new-instance v3, Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 237
    .local v3, time:Landroid/text/format/Time;
    const-string v5, "key_restore_time"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 238
    invoke-virtual {v4, v3}, Lcom/android/calendar/CalendarView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 239
    invoke-virtual {v4, v2}, Lcom/android/calendar/CalendarView;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 241
    invoke-direct {p0}, Lcom/android/calendar/WeekActivity;->setBodyView()V

    .line 242
    invoke-virtual {v4, v0}, Lcom/android/calendar/CalendarView;->reloadEventAction(Ljava/util/ArrayList;)V

    .line 243
    invoke-virtual {v4}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 244
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/calendar/CalendarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v3, 0x7f03003b

    invoke-virtual {p0, v3}, Lcom/android/calendar/WeekActivity;->setContentView(I)V

    .line 69
    if-eqz p1, :cond_48

    .line 70
    const-string v3, "key_restore_time"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 74
    .local v0, millis:J
    :goto_11
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 75
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-static {v3}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 76
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 78
    const v3, 0x7f0f0035

    invoke-virtual {p0, v3}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewSwitcher;

    iput-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 79
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 80
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 82
    invoke-direct {p0}, Lcom/android/calendar/WeekActivity;->setBodyView()V

    .line 85
    new-instance v2, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, weekStart:Landroid/text/format/Time;
    return-void

    .line 72
    .end local v0           #millis:J
    .end local v2           #weekStart:Landroid/text/format/Time;
    :cond_48
    invoke-virtual {p0}, Lcom/android/calendar/WeekActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v0

    .restart local v0       #millis:J
    goto :goto_11
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 298
    packed-switch p1, :pswitch_data_1e

    .line 311
    invoke-super {p0, p1}, Lcom/android/calendar/CalendarActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 301
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/calendar/WeekActivity;->eventTitles:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/calendar/WeekActivity$8;

    invoke-direct {v2, p0}, Lcom/android/calendar/WeekActivity$8;-><init>(Lcom/android/calendar/WeekActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 298
    nop

    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_8
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 257
    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v1

    .line 258
    .local v1, timeMillis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1b

    .line 259
    new-instance v0, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 261
    invoke-virtual {p0, v0, v5, v5}, Lcom/android/calendar/WeekActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 263
    .end local v0           #time:Landroid/text/format/Time;
    :cond_1b
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 286
    invoke-super {p0}, Lcom/android/calendar/CalendarActivity;->onPause()V

    .line 287
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 288
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 290
    return-void
.end method

.method protected onResume()V
    .registers 9

    .prologue
    .line 267
    invoke-super {p0}, Lcom/android/calendar/CalendarActivity;->onResume()V

    .line 269
    iget-object v6, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/CalendarView;

    .line 270
    .local v4, view1:Lcom/android/calendar/CalendarView;
    iget-object v6, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/CalendarView;

    .line 271
    .local v5, view2:Lcom/android/calendar/CalendarView;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 273
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v6, "preferredDetailedView"

    sget-object v7, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, str:Ljava/lang/String;
    const-string v6, "preferences_day_view"

    sget-object v7, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, startActivityId:Ljava/lang/String;
    sget-object v6, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v1, v6, v7

    .line 278
    .local v1, startActivity:Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/android/calendar/CalendarView;->setDetailedView(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v5, v1}, Lcom/android/calendar/CalendarView;->setDetailedView(Ljava/lang/String;)V

    .line 281
    iget-object v6, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v4, v6}, Lcom/android/calendar/CalendarView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 282
    return-void
.end method
