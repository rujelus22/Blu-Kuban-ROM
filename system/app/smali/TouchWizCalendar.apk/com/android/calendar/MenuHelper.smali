.class public Lcom/android/calendar/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreateOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)Z
    .registers 10
    .parameter "activity"
    .parameter "menu"

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0xd

    const/4 v3, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 207
    const/4 v1, 0x4

    const v2, 0x7f0a0074

    invoke-interface {p1, v1, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 208
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x2020137

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 209
    const/16 v1, 0x6e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 211
    const/16 v1, 0xc

    const v2, 0x7f0a0097

    invoke-interface {p1, v6, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 212
    const v1, 0x2020152

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 213
    const/16 v1, 0x67

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 215
    const v1, 0x7f0a002d

    invoke-interface {p1, v3, v5, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 216
    const v1, 0x2020173

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 217
    const/16 v1, 0x74

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 219
    const/16 v1, 0x10

    const/16 v2, 0x12

    const v3, 0x104000c

    invoke-interface {p1, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 220
    const v1, 0x2020169

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 221
    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 223
    const v1, 0x7f0a002c

    invoke-interface {p1, v7, v6, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 224
    const v1, 0x202014a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 225
    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 248
    const/16 v1, 0xf

    const v2, 0x7f0a002f

    invoke-interface {p1, v1, v7, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 249
    const v1, 0x2020162

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 250
    const/16 v1, 0x70

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 311
    return v5
.end method

.method public static onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/android/calendar/Navigator;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_126

    .line 457
    :pswitch_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 318
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    const-class v1, Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 322
    const/4 v0, 0x1

    goto :goto_8

    .line 338
    :pswitch_1a
    invoke-interface {p2}, Lcom/android/calendar/Navigator;->goToToday()V

    .line 339
    const/4 v0, 0x1

    goto :goto_8

    .line 341
    :pswitch_1f
    const-class v0, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 342
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 343
    const/4 v0, 0x1

    goto :goto_8

    .line 345
    :pswitch_31
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 346
    const-string v1, "preferences_day_view"

    sget-object v2, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    sget-object v1, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v0, v1, v0

    .line 350
    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 351
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 352
    const/4 v0, 0x1

    goto :goto_8

    .line 359
    :pswitch_51
    const-class v0, Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 360
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 361
    const/4 v0, 0x1

    goto :goto_8

    .line 363
    :pswitch_63
    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v0

    .line 364
    const-wide/32 v2, 0x36ee80

    add-long/2addr v2, v0

    .line 365
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    const-class v5, Lcom/android/calendar/EditEvent;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v5, "beginTime"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 368
    const-string v0, "endTime"

    invoke-virtual {v4, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 369
    const-string v0, "allDay"

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getAllDay()Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 371
    const/4 v0, 0x1

    invoke-virtual {p0, v4, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 372
    const/4 v0, 0x1

    goto/16 :goto_8

    .line 377
    :pswitch_95
    const-class v0, Lcom/android/calendar/CalendarSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 379
    const/4 v0, 0x1

    goto/16 :goto_8

    .line 382
    :pswitch_a5
    instance-of v0, p0, Lcom/android/calendar/DayActivity;

    if-nez v0, :cond_ad

    instance-of v0, p0, Lcom/android/calendar/DayEventListActivity;

    if-eqz v0, :cond_c5

    .line 383
    :cond_ad
    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v1

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v3

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getFirstJulianDay()I

    move-result v5

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getFirstJulianDay()I

    move-result v6

    const/4 v7, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/Utils;->startActivityForDelete(Landroid/content/Context;JJIII)V

    .line 386
    const/4 v0, 0x1

    goto/16 :goto_8

    .line 387
    :cond_c5
    instance-of v0, p0, Lcom/android/calendar/MonthActivity;

    if-eqz v0, :cond_e7

    .line 388
    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getStartMillis()J

    move-result-wide v1

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getEndMillis()J

    move-result-wide v3

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getFirstJulianDay()I

    move-result v5

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getLastJulianDay()I

    move-result v6

    move-object v0, p0

    check-cast v0, Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->getMode()I

    move-result v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/Utils;->startActivityForDelete(Landroid/content/Context;JJIII)V

    .line 391
    const/4 v0, 0x1

    goto/16 :goto_8

    .line 392
    :cond_e7
    instance-of v0, p0, Lcom/android/calendar/WeekActivity;

    if-eqz v0, :cond_103

    .line 393
    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getStartMillis()J

    move-result-wide v1

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getEndMillis()J

    move-result-wide v3

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getFirstJulianDay()I

    move-result v5

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getLastJulianDay()I

    move-result v6

    const/4 v7, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/Utils;->startActivityForDelete(Landroid/content/Context;JJIII)V

    .line 396
    const/4 v0, 0x1

    goto/16 :goto_8

    .line 397
    :cond_103
    instance-of v0, p0, Lcom/android/calendar/AgendaActivity;

    if-eqz v0, :cond_119

    .line 398
    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getStartMillis()J

    move-result-wide v1

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getEndMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/Utils;->startActivityForDelete(Landroid/content/Context;JJIII)V

    .line 400
    const/4 v0, 0x1

    goto/16 :goto_8

    .line 402
    :cond_119
    const/4 v0, 0x1

    goto/16 :goto_8

    .line 428
    :pswitch_11c
    const/4 v0, 0x1

    goto/16 :goto_8

    .line 432
    :pswitch_11f
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    .line 433
    const/4 v0, 0x1

    goto/16 :goto_8

    .line 316
    nop

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1f
        :pswitch_31
        :pswitch_7
        :pswitch_63
        :pswitch_7
        :pswitch_7
        :pswitch_51
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_a5
        :pswitch_95
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_11f
        :pswitch_7
        :pswitch_7
        :pswitch_11c
    .end packed-switch
.end method

.method public static onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)V
    .registers 8
    .parameter "activity"
    .parameter "menu"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 132
    instance-of v0, p0, Lcom/android/calendar/AgendaActivity;

    if-eqz v0, :cond_32

    .line 133
    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 134
    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 140
    :goto_f
    instance-of v0, p0, Lcom/android/calendar/DayActivity;

    if-nez v0, :cond_17

    instance-of v0, p0, Lcom/android/calendar/DayEventListActivity;

    if-eqz v0, :cond_39

    .line 141
    :cond_17
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 142
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 156
    :goto_1d
    instance-of v0, p0, Lcom/android/calendar/MonthActivity;

    if-eqz v0, :cond_40

    .line 157
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 158
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 164
    :goto_27
    instance-of v0, p0, Lcom/android/calendar/EventInfoActivity;

    if-eqz v0, :cond_47

    .line 165
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 166
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 201
    :goto_31
    return-void

    .line 136
    :cond_32
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 137
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_f

    .line 144
    :cond_39
    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 145
    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_1d

    .line 160
    :cond_40
    invoke-interface {p1, v4, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 161
    invoke-interface {p1, v4, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_27

    .line 168
    :cond_47
    invoke-interface {p1, v5, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 169
    invoke-interface {p1, v5, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_31
.end method
