.class public Lcom/sprint/dsa/DiagnosticsInfoActivity;
.super Landroid/app/ListActivity;
.source "DiagnosticsInfoActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private mAdapter:Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;

.field private mDataConnectionTest:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

.field private mListener:Lcom/sprint/dsa/diagnostics/DataConnectionTest$ConnectionListener;

.field private mPosition:I

.field private mSettingsId:I

.field private mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 142
    new-instance v0, Lcom/sprint/dsa/DiagnosticsInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/DiagnosticsInfoActivity$1;-><init>(Lcom/sprint/dsa/DiagnosticsInfoActivity;)V

    iput-object v0, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mListener:Lcom/sprint/dsa/diagnostics/DataConnectionTest$ConnectionListener;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/DiagnosticsInfoActivity;)Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/DiagnosticsInfoActivity;)Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mAdapter:Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sprint/dsa/DiagnosticsInfoActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$3(Lcom/sprint/dsa/DiagnosticsInfoActivity;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private onDataConnectionTest(I)V
    .registers 8
    .parameter "type"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mDataConnectionTest:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    if-nez v0, :cond_12

    .line 135
    new-instance v0, Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mDataConnectionTest:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    .line 136
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mDataConnectionTest:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    iget-object v1, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mListener:Lcom/sprint/dsa/diagnostics/DataConnectionTest$ConnectionListener;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->setListener(Lcom/sprint/dsa/diagnostics/DataConnectionTest$ConnectionListener;)V

    .line 138
    :cond_12
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mAdapter:Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;

    iget v1, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mPosition:I

    iget-object v2, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mView:Landroid/view/View;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v5, "status.test.running"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;->updateView(ILandroid/view/View;ILjava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mDataConnectionTest:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    invoke-virtual {v0, p1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->startTest(I)V

    .line 140
    return-void
.end method

.method private performAction(Lcom/sprint/dsa/data/InfoItem;)Z
    .registers 11
    .parameter "infoItem"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    if-nez p1, :cond_5

    .line 121
    :cond_4
    :goto_4
    return v5

    .line 81
    :cond_5
    invoke-virtual {p1}, Lcom/sprint/dsa/data/InfoItem;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sprint/dsa/data/InfoItem;->getUri()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, uri:Ljava/lang/String;
    if-nez v0, :cond_11

    if-eqz v4, :cond_4

    .line 87
    :cond_11
    :try_start_11
    const-string v7, "function"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 88
    const-string v6, "setting"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 89
    iget v6, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mSettingsId:I

    invoke-static {p0, v6}, Lcom/sprint/dsa/diagnostics/DiagnosticsHelper;->displaySetting(Landroid/content/Context;I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_26} :catch_27

    goto :goto_4

    .line 117
    :catch_27
    move-exception v1

    .line 118
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SprintZone_Diagnostics"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to perform action: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 90
    .end local v1           #e:Ljava/lang/Exception;
    :cond_47
    :try_start_47
    const-string v6, "sdcard_usage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 91
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/sprint/dsa/MicroSdUsageActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 92
    :cond_5a
    const-string v6, "memory_usage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 93
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/sprint/dsa/MemoryUsageActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 94
    :cond_6d
    const-string v6, "notification_test"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 95
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/sprint/dsa/DiagnosticsNotificationActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 96
    :cond_80
    const-string v6, "power_configuration"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 97
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/sprint/dsa/PowerConfigActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 98
    :cond_94
    const-string v6, "power_usage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 99
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, intent:Landroid/content/Intent;
    const/high16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v2}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 102
    .end local v2           #intent:Landroid/content/Intent;
    :cond_ad
    const-string v6, "3g_test"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 103
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->onDataConnectionTest(I)V

    goto/16 :goto_4

    .line 104
    :cond_bb
    const-string v6, "4g_test"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 105
    const/4 v6, 0x6

    invoke-direct {p0, v6}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->onDataConnectionTest(I)V

    goto/16 :goto_4

    .line 106
    :cond_c9
    const-string v6, "wifi_test"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 107
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->onDataConnectionTest(I)V

    goto/16 :goto_4

    .line 110
    :cond_d7
    const-string v7, "web"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 111
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 112
    .local v3, link:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v2}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_f0} :catch_27

    move v5, v6

    .line 115
    goto/16 :goto_4
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 35
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0, v6}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p0}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.sprint.extra.SETTINGS_ID"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mSettingsId:I

    .line 40
    invoke-virtual {p0}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.sprint.extra.SETTINGS_KEY"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 43
    invoke-static {p0, v1}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->getStub(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    .line 45
    :cond_26
    iget-object v3, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    if-eqz v3, :cond_7b

    .line 46
    iget-object v3, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    invoke-virtual {v3}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getInfoItemsCount()I

    move-result v0

    .line 47
    .local v0, cnt:I
    if-nez v0, :cond_36

    .line 49
    invoke-virtual {p0}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->finish()V

    .line 66
    .end local v0           #cnt:I
    :goto_35
    return-void

    .line 50
    .restart local v0       #cnt:I
    :cond_36
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4c

    .line 51
    iget-object v3, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    invoke-virtual {v3}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getInfoItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/dsa/data/InfoItem;

    invoke-direct {p0, v3}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->performAction(Lcom/sprint/dsa/data/InfoItem;)Z

    .line 52
    invoke-virtual {p0}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->finish()V

    goto :goto_35

    .line 54
    :cond_4c
    const v3, 0x7f03000e

    invoke-virtual {p0, v3}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->setContentView(I)V

    .line 55
    const v3, 0x7f020014

    invoke-virtual {p0, v6, v3}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->setFeatureDrawableResource(II)V

    .line 57
    const v3, 0x7f0b001d

    invoke-virtual {p0, v3}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    .local v2, view:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    invoke-virtual {v3}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v3, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;

    iget-object v4, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    iget v5, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mSettingsId:I

    invoke-direct {v3, p0, v4, v5}, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;-><init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;I)V

    iput-object v3, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mAdapter:Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;

    .line 60
    iget-object v3, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mAdapter:Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;

    invoke-virtual {p0, v3}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_35

    .line 63
    .end local v0           #cnt:I
    .end local v2           #view:Landroid/widget/TextView;
    :cond_7b
    const-string v3, "SprintZone_Diagnostics"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DiagnosticStub not found for key: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->finish()V

    goto :goto_35
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mDataConnectionTest:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    if-eqz v0, :cond_9

    .line 127
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mDataConnectionTest:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->removeListener()V

    .line 129
    :cond_9
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 130
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/InfoItem;

    .line 72
    .local v0, infoItem:Lcom/sprint/dsa/data/InfoItem;
    iput p3, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mPosition:I

    .line 73
    iput-object p2, p0, Lcom/sprint/dsa/DiagnosticsInfoActivity;->mView:Landroid/view/View;

    .line 74
    invoke-direct {p0, v0}, Lcom/sprint/dsa/DiagnosticsInfoActivity;->performAction(Lcom/sprint/dsa/data/InfoItem;)Z

    .line 75
    return-void
.end method
