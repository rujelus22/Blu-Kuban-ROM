.class public Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;
.super Landroid/app/ExpandableListActivity;
.source "SelectSyncedCalendarsMultiAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mList:Landroid/widget/ExpandableListView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type || account_name AS ACCOUNT_KEY"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method private startCalendarMetafeedSync()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    const-string v1, "metafeedonly"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    const/4 v1, 0x0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 178
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 94
    :goto_7
    return-void

    .line 86
    :pswitch_8
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->doSaveAction()V

    .line 87
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->finish()V

    goto :goto_7

    .line 91
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->finish()V

    goto :goto_7

    .line 84
    nop

    :pswitch_data_16
    .packed-switch 0x7f1000a2
        :pswitch_11
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f04002f

    invoke-virtual {p0, v0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    .line 58
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->PROJECTION:[Ljava/lang/String;

    const-string v3, "1) GROUP BY (ACCOUNT_KEY"

    const/4 v4, 0x0

    const-string v5, "account_name"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mCursor:Landroid/database/Cursor;

    .line 62
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 63
    .local v6, accountsCursor:Landroid/database/MatrixCursor;
    invoke-virtual {p0, v6}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 65
    new-instance v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    const/high16 v1, 0x7f10

    invoke-virtual {p0, v1}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v6, p0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;)V

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    .line 67
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 70
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v7

    .line 71
    .local v7, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_47
    if-ge v8, v7, :cond_51

    .line 72
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v8}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 71
    add-int/lit8 v8, v8, 0x1

    goto :goto_47

    .line 76
    :cond_51
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->startCalendarMetafeedSync()V

    .line 78
    const v0, 0x7f1000a3

    invoke-virtual {p0, v0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v0, 0x7f1000a2

    invoke-virtual {p0, v0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x4

    .line 146
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 158
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 155
    :pswitch_c
    invoke-static {p0}, Lcom/android/calendar/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 156
    const/4 v0, 0x1

    goto :goto_b

    .line 153
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onPause()V

    .line 107
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->cancelRefreshStopDelay()V

    .line 108
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    .line 132
    const-string v2, "is_expanded"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    .line 133
    .local v1, isExpanded:[Z
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_48

    if-eqz v1, :cond_48

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v2

    array-length v3, v1

    if-lt v2, v3, :cond_48

    .line 134
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    array-length v2, v1

    if-ge v0, v2, :cond_48

    .line 135
    aget-boolean v2, v1, v0

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-nez v2, :cond_36

    .line 136
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 134
    :cond_33
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 137
    :cond_36
    aget-boolean v2, v1, v0

    if-nez v2, :cond_33

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 138
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_33

    .line 142
    .end local v0           #i:I
    :cond_48
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    if-eqz v0, :cond_c

    .line 100
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->startRefreshStopDelay()V

    .line 102
    :cond_c
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "outState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    .line 115
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    if-eqz v3, :cond_23

    .line 116
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v0

    .line 117
    .local v0, count:I
    new-array v2, v0, [Z

    .line 118
    .local v2, isExpanded:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    if-ge v1, v0, :cond_24

    .line 119
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v3

    aput-boolean v3, v2, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 122
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #isExpanded:[Z
    :cond_23
    const/4 v2, 0x0

    .line 124
    .restart local v2       #isExpanded:[Z
    :cond_24
    const-string v3, "is_expanded"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 126
    return-void
.end method
