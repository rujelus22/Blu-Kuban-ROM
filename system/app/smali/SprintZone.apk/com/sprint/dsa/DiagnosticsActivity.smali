.class public Lcom/sprint/dsa/DiagnosticsActivity;
.super Landroid/app/ExpandableListActivity;
.source "DiagnosticsActivity.java"

# interfaces
.implements Lcom/sprint/dsa/diagnostics/DiagnosticListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

.field private mIntentReceiver:Lcom/sprint/dsa/diagnostics/SettingsReceiver;

.field private mListAdapter:Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/DiagnosticsActivity;)Lcom/sprint/dsa/diagnostics/Diagnostics;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    return-object v0
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 14
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mListAdapter:Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;

    if-eqz v0, :cond_10

    .line 103
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mListAdapter:Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v0

    .line 105
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x3

    .line 36
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/DiagnosticsActivity;->requestWindowFeature(I)Z

    .line 41
    invoke-virtual {p0, v3}, Lcom/sprint/dsa/DiagnosticsActivity;->requestWindowFeature(I)Z

    .line 43
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/DiagnosticsActivity;->setContentView(I)V

    .line 44
    const v2, 0x7f020014

    invoke-virtual {p0, v3, v2}, Lcom/sprint/dsa/DiagnosticsActivity;->setFeatureDrawableResource(II)V

    .line 46
    new-instance v2, Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-static {p0}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->getStubs(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sprint/dsa/diagnostics/Diagnostics;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    .line 47
    iget-object v2, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-virtual {v2, p0}, Lcom/sprint/dsa/diagnostics/Diagnostics;->addListener(Lcom/sprint/dsa/diagnostics/DiagnosticListener;)V

    .line 50
    new-instance v2, Lcom/sprint/dsa/diagnostics/SettingsReceiver;

    iget-object v3, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-direct {v2, v3}, Lcom/sprint/dsa/diagnostics/SettingsReceiver;-><init>(Lcom/sprint/dsa/diagnostics/Diagnostics;)V

    iput-object v2, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mIntentReceiver:Lcom/sprint/dsa/diagnostics/SettingsReceiver;

    .line 51
    iget-object v2, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-virtual {v2}, Lcom/sprint/dsa/diagnostics/Diagnostics;->createReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 52
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mIntentReceiver:Lcom/sprint/dsa/diagnostics/SettingsReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sprint/dsa/DiagnosticsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    new-instance v1, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;

    invoke-static {p0}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->getGroups(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;-><init>(Ljava/util/List;)V

    .line 58
    .local v1, groups:Lcom/sprint/dsa/diagnostics/DiagnosticGroups;
    new-instance v2, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;

    iget-object v3, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-direct {v2, p0, v3, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;-><init>(Landroid/app/Activity;Lcom/sprint/dsa/diagnostics/Diagnostics;Lcom/sprint/dsa/diagnostics/DiagnosticGroups;)V

    .line 57
    iput-object v2, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mListAdapter:Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;

    .line 59
    iget-object v2, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mListAdapter:Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/DiagnosticsActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 60
    invoke-virtual {p0}, Lcom/sprint/dsa/DiagnosticsActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 62
    iget-object v2, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mListAdapter:Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;

    invoke-virtual {p0}, Lcom/sprint/dsa/DiagnosticsActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->expandGroups(Landroid/widget/ExpandableListView;)V

    .line 63
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/sprint/dsa/DiagnosticsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 134
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onDestroy()V

    .line 95
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mIntentReceiver:Lcom/sprint/dsa/diagnostics/SettingsReceiver;

    if-eqz v0, :cond_c

    .line 96
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mIntentReceiver:Lcom/sprint/dsa/diagnostics/SettingsReceiver;

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/DiagnosticsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    :cond_c
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_38

    .line 155
    :goto_7
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 142
    :pswitch_c
    iget-object v2, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-virtual {v2}, Lcom/sprint/dsa/diagnostics/Diagnostics;->runTests()V

    goto :goto_7

    .line 145
    :pswitch_12
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sprint/dsa/PageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v1, intent:Landroid/content/Intent;
    :try_start_19
    const-string v2, "SPRINT_ZONE_PAGE"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string v2, "com.sprint.extra.TITLE"

    const v3, 0x7f080078

    invoke-virtual {p0, v3}, Lcom/sprint/dsa/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v1}, Lcom/sprint/dsa/DiagnosticsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_2f

    goto :goto_7

    .line 150
    :catch_2f
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SprintZone_Diagnostics"

    const-string v3, "Unable to launch Customer Care Activity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 140
    :pswitch_data_38
    .packed-switch 0x7f0b0055
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onStart()V

    .line 71
    new-instance v0, Lcom/sprint/dsa/DiagnosticsActivity$1;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/DiagnosticsActivity$1;-><init>(Lcom/sprint/dsa/DiagnosticsActivity;)V

    .line 80
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    return-void
.end method

.method public onStatusChange(Lcom/sprint/dsa/diagnostics/Diagnostic;)V
    .registers 3
    .parameter "diagnostic"

    .prologue
    .line 110
    new-instance v0, Lcom/sprint/dsa/DiagnosticsActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/sprint/dsa/DiagnosticsActivity$2;-><init>(Lcom/sprint/dsa/DiagnosticsActivity;Lcom/sprint/dsa/diagnostics/Diagnostic;)V

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/DiagnosticsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onStop()V

    .line 86
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/Diagnostics;->onCleanup()V

    .line 87
    return-void
.end method

.method protected updateDiagnosticView(Lcom/sprint/dsa/diagnostics/Diagnostic;)V
    .registers 5
    .parameter "diagnostic"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/sprint/dsa/DiagnosticsActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    .line 123
    .local v1, listView:Landroid/widget/ExpandableListView;
    iget-object v2, p0, Lcom/sprint/dsa/DiagnosticsActivity;->mListAdapter:Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;

    invoke-virtual {v2, v1, p1}, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->getDiagnosticView(Landroid/widget/ExpandableListView;Lcom/sprint/dsa/diagnostics/Diagnostic;)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, diagView:Landroid/view/View;
    if-eqz v0, :cond_f

    .line 125
    invoke-virtual {p1, v0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->updateView(Landroid/view/View;)V

    .line 129
    :cond_f
    return-void
.end method
