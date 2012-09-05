.class public Lcom/sprint/dsa/PageAlerts;
.super Landroid/app/ListActivity;
.source "PageAlerts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/PageAlerts$AlertListAdapter;,
        Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;,
        Lcom/sprint/dsa/PageAlerts$ViewHolder;
    }
.end annotation


# static fields
.field private static final MENU_ITEM_DELETE:I = 0x1

.field private static final MENU_ITEM_GO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SprintZone_PageAlerts"


# instance fields
.field private mAlerts:Lcom/sprint/dsa/data/Alerts;

.field private mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

.field private mForPacks:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListAdapter:Lcom/sprint/dsa/PageAlerts$AlertListAdapter;

.field private mResources:Lcom/sprint/dsa/res/SzResources;

.field private mSettings:Lcom/sprint/dsa/SzSettings;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/dsa/PageAlerts;->mForPacks:Z

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/PageAlerts;)Lcom/sprint/dsa/data/Alerts;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mAlerts:Lcom/sprint/dsa/data/Alerts;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/PageAlerts;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sprint/dsa/PageAlerts;)Lcom/sprint/dsa/data/DbAdapter;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sprint/dsa/PageAlerts;)Lcom/sprint/dsa/PageAlerts$AlertListAdapter;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mListAdapter:Lcom/sprint/dsa/PageAlerts$AlertListAdapter;

    return-object v0
.end method

.method private confirmDelete(IILandroid/content/DialogInterface$OnClickListener;)V
    .registers 7
    .parameter "title"
    .parameter "message"
    .parameter "action"

    .prologue
    .line 269
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 270
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 271
    invoke-virtual {p0, p2}, Lcom/sprint/dsa/PageAlerts;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 272
    const v1, 0x108008a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 273
    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageAlerts;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 274
    const v1, 0x7f080003

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageAlerts;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sprint/dsa/PageAlerts$1;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/PageAlerts$1;-><init>(Lcom/sprint/dsa/PageAlerts;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 279
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 280
    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .registers 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mResources:Lcom/sprint/dsa/res/SzResources;

    if-nez v0, :cond_f

    new-instance v0, Lcom/sprint/dsa/res/SzResources;

    invoke-super {p0}, Landroid/app/ListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprint/dsa/res/SzResources;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mResources:Lcom/sprint/dsa/res/SzResources;

    .line 316
    :cond_f
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mResources:Lcom/sprint/dsa/res/SzResources;

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 108
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 109
    .local v3, position:I
    iget-object v5, p0, Lcom/sprint/dsa/PageAlerts;->mAlerts:Lcom/sprint/dsa/data/Alerts;

    invoke-virtual {v5, v3}, Lcom/sprint/dsa/data/Alerts;->getAlert(I)Lcom/sprint/dsa/data/Alert;

    move-result-object v0

    .line 110
    .local v0, alert:Lcom/sprint/dsa/data/Alert;
    if-nez v0, :cond_12

    .line 127
    :goto_11
    return v4

    .line 115
    :cond_12
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_44

    goto :goto_11

    .line 117
    :pswitch_1a
    iget-object v4, p0, Lcom/sprint/dsa/PageAlerts;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getCampaign()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sprint/dsa/Reporting;->reportAlertClick(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getUri()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getPackId()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v4, v5, v6, v7}, Lcom/sprint/dsa/Action;->doAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 127
    :goto_33
    const/4 v4, 0x1

    goto :goto_11

    .line 121
    :pswitch_35
    new-instance v2, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;

    invoke-direct {v2, p0, v0}, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;-><init>(Lcom/sprint/dsa/PageAlerts;Lcom/sprint/dsa/data/Alert;)V

    .line 122
    .local v2, listener:Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;
    const v4, 0x7f08002d

    const v5, 0x7f08002e

    invoke-direct {p0, v4, v5, v2}, Lcom/sprint/dsa/PageAlerts;->confirmDelete(IILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_33

    .line 115
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_35
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x3

    .line 51
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageAlerts;->requestWindowFeature(I)Z

    .line 55
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageAlerts;->setContentView(I)V

    .line 56
    const v0, 0x7f020014

    invoke-virtual {p0, v1, v0}, Lcom/sprint/dsa/PageAlerts;->setFeatureDrawableResource(II)V

    .line 61
    :try_start_14
    new-instance v0, Lcom/sprint/dsa/data/DbAdapter;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/data/DbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    .line 62
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;
    :try_end_28
    .catch Landroid/database/SQLException; {:try_start_14 .. :try_end_28} :catch_85

    .line 68
    :cond_28
    :goto_28
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageAlerts;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    invoke-virtual {p0}, Lcom/sprint/dsa/PageAlerts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sprint.extra.forPacks"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprint/dsa/PageAlerts;->mForPacks:Z

    .line 73
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->getAlerts()Lcom/sprint/dsa/data/Alerts;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mAlerts:Lcom/sprint/dsa/data/Alerts;

    .line 74
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mAlerts:Lcom/sprint/dsa/data/Alerts;

    iget-object v1, p0, Lcom/sprint/dsa/PageAlerts;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0, p0, v1}, Lcom/sprint/dsa/data/Alerts;->cleanAlerts(Landroid/content/Context;Lcom/sprint/dsa/data/DbAdapter;)V

    .line 75
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->getSettings()Lcom/sprint/dsa/SzSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mSettings:Lcom/sprint/dsa/SzSettings;

    .line 76
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mAlerts:Lcom/sprint/dsa/data/Alerts;

    iget-object v1, p0, Lcom/sprint/dsa/PageAlerts;->mSettings:Lcom/sprint/dsa/SzSettings;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/data/Alerts;->filter(Lcom/sprint/dsa/SzSettings;)V

    .line 78
    iget-boolean v0, p0, Lcom/sprint/dsa/PageAlerts;->mForPacks:Z

    if-eqz v0, :cond_7f

    .line 80
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mAlerts:Lcom/sprint/dsa/data/Alerts;

    invoke-virtual {v0, v3}, Lcom/sprint/dsa/data/Alerts;->filterRemove(Ljava/lang/String;)V

    .line 86
    :goto_66
    new-instance v0, Lcom/sprint/dsa/PageAlerts$AlertListAdapter;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/PageAlerts$AlertListAdapter;-><init>(Lcom/sprint/dsa/PageAlerts;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mListAdapter:Lcom/sprint/dsa/PageAlerts$AlertListAdapter;

    .line 87
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mListAdapter:Lcom/sprint/dsa/PageAlerts$AlertListAdapter;

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageAlerts;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mListAdapter:Lcom/sprint/dsa/PageAlerts$AlertListAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/PageAlerts$AlertListAdapter;->notifyDataSetChanged()V

    .line 93
    invoke-virtual {p0}, Lcom/sprint/dsa/PageAlerts;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageAlerts;->registerForContextMenu(Landroid/view/View;)V

    .line 94
    return-void

    .line 83
    :cond_7f
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mAlerts:Lcom/sprint/dsa/data/Alerts;

    invoke-virtual {v0, v3}, Lcom/sprint/dsa/data/Alerts;->filterKeep(Ljava/lang/String;)V

    goto :goto_66

    .line 63
    :catch_85
    move-exception v0

    goto :goto_28
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    const v0, 0x7f08002d

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 99
    const v0, 0x7f08002f

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 100
    const v0, 0x7f080030

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 101
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/sprint/dsa/PageAlerts;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 245
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 249
    const/4 v1, 0x1

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 13
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mAlerts:Lcom/sprint/dsa/data/Alerts;

    invoke-virtual {v0, p3}, Lcom/sprint/dsa/data/Alerts;->getAlert(I)Lcom/sprint/dsa/data/Alert;

    move-result-object v6

    .line 150
    .local v6, alert:Lcom/sprint/dsa/data/Alert;
    if-nez v6, :cond_9

    .line 161
    :goto_8
    return-void

    .line 155
    :cond_9
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v6}, Lcom/sprint/dsa/data/Alert;->getCampaign()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprint/dsa/Reporting;->reportAlertClick(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V

    .line 157
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v5, extras:Landroid/os/Bundle;
    const-string v0, "com.sprint.extra.launchedFromNotification"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    invoke-virtual {v6}, Lcom/sprint/dsa/data/Alert;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sprint/dsa/data/Alert;->getUri()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v6}, Lcom/sprint/dsa/data/Alert;->getPackId()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sprint/dsa/Action;->doAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_8
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 255
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_22

    .line 264
    const/4 v2, 0x0

    :cond_9
    :goto_9
    return v2

    .line 257
    :pswitch_a
    iget-object v3, p0, Lcom/sprint/dsa/PageAlerts;->mAlerts:Lcom/sprint/dsa/data/Alerts;

    invoke-virtual {v3}, Lcom/sprint/dsa/data/Alerts;->getSize()I

    move-result v1

    .line 258
    .local v1, size:I
    if-eqz v1, :cond_9

    .line 259
    new-instance v0, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;-><init>(Lcom/sprint/dsa/PageAlerts;Lcom/sprint/dsa/data/Alert;)V

    .line 260
    .local v0, listener:Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;
    const v3, 0x7f08002a

    const v4, 0x7f08002c

    invoke-direct {p0, v3, v4, v0}, Lcom/sprint/dsa/PageAlerts;->confirmDelete(IILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_9

    .line 255
    :pswitch_data_22
    .packed-switch 0x7f0b0054
        :pswitch_a
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 144
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V

    .line 145
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 135
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;

    .line 137
    :cond_10
    return-void
.end method
