.class public Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;
.super Lcom/sprint/dsa/diagnostics/Diagnostic;
.source "PowerConfigDiagnostic.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "power.config"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"

.field public static final TAG_POWER_CONFIG:Ljava/lang/String; = "power.config"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 4
    .parameter "context"
    .parameter "stub"

    .prologue
    .line 16
    const-string v0, "power.config"

    invoke-direct {p0, p1, v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getListView(Landroid/view/View;)Landroid/view/View;
    .registers 9
    .parameter "convertView"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;->getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, childView:Landroid/view/View;
    const-string v4, "power.config"

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    const v4, 0x7f0b001d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    .local v2, text1:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v5, "config.title"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v4, 0x7f0b001e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 57
    .local v3, text2:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v5, "config.description"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v4, 0x7f0b0018

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, dots:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 62
    return-object v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "config.description"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 4

    .prologue
    .line 34
    :try_start_0
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->NOT_RUN:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 35
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 36
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_e

    .line 44
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;->fireStatusChange()V

    .line 41
    :goto_d
    return-object v1

    .line 37
    :catch_e
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    :try_start_f
    const-string v1, "SprintZone_Diagnostics"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 40
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 41
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_24

    .line 44
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;->fireStatusChange()V

    goto :goto_d

    .line 43
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_24
    move-exception v1

    .line 44
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;->fireStatusChange()V

    .line 45
    throw v1
.end method

.method public updateViews(Landroid/view/View;)V
    .registers 2
    .parameter "parentView"

    .prologue
    .line 73
    return-void
.end method
