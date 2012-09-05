.class public Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;
.super Lcom/sprint/dsa/diagnostics/Diagnostic;
.source "PowerUsageDiagnostic.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "power.usage"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"

.field public static final TAG_POWER_USAGE:Ljava/lang/String; = "power.usage"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 4
    .parameter "context"
    .parameter "stub"

    .prologue
    .line 22
    const-string v0, "power.usage"

    invoke-direct {p0, p1, v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getListView(Landroid/view/View;)Landroid/view/View;
    .registers 9
    .parameter "convertView"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;->getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, childView:Landroid/view/View;
    const-string v4, "power.usage"

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    const v4, 0x7f0b001d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    .local v2, text1:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v5, "usage.title"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v4, 0x7f0b001e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 73
    .local v3, text2:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v5, "usage.description"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v4, 0x7f0b0018

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 76
    .local v1, dots:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 78
    return-object v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "usage.description"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 4

    .prologue
    .line 40
    :try_start_0
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 41
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 42
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_e

    .line 50
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;->fireStatusChange()V

    .line 47
    :goto_d
    return-object v1

    .line 43
    :catch_e
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/Exception;
    :try_start_f
    const-string v1, "SprintZone_Diagnostics"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 46
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 47
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_24

    .line 50
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;->fireStatusChange()V

    goto :goto_d

    .line 49
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_24
    move-exception v1

    .line 50
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;->fireStatusChange()V

    .line 51
    throw v1
.end method

.method public updateReceiverIntentFilter(Landroid/content/IntentFilter;)V
    .registers 3
    .parameter "filter"

    .prologue
    .line 94
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 95
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    :cond_d
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 98
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    :cond_1a
    return-void
.end method

.method public updateState(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 57
    return-void
.end method

.method public updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 61
    return-void
.end method

.method public updateViews(Landroid/view/View;)V
    .registers 2
    .parameter "parentView"

    .prologue
    .line 89
    return-void
.end method
