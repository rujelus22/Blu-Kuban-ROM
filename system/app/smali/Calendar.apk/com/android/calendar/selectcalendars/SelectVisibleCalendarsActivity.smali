.class public Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;
.super Lcom/android/calendar/AbstractCalendarActivity;
.source "SelectVisibleCalendarsActivity.java"


# instance fields
.field private mFragment:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/calendar/AbstractCalendarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSelectSyncedCalendarsClicked(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    const-class v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 58
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const v3, 0x7f1000a4

    .line 36
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f040030

    invoke-virtual {p0, v1}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    .line 43
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    if-nez v1, :cond_3b

    .line 44
    new-instance v1, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    const v2, 0x7f040011

    invoke-direct {v1, v2}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    .line 46
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 47
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 48
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 49
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 51
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_3b
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x4

    .line 64
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 76
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 73
    :pswitch_c
    invoke-static {p0}, Lcom/android/calendar/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 74
    const/4 v0, 0x1

    goto :goto_b

    .line 71
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
