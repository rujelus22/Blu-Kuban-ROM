.class public Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PowerConfigListAdapter.java"

# interfaces
.implements Lcom/sprint/dsa/diagnostics/DiagnosticListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sprint/dsa/diagnostics/Diagnostics;)V
    .registers 4
    .parameter "activity"
    .parameter "diagnostics"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;->mActivity:Landroid/app/Activity;

    .line 23
    iput-object p2, p0, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    .line 25
    invoke-virtual {p2, p0}, Lcom/sprint/dsa/diagnostics/Diagnostics;->addListener(Lcom/sprint/dsa/diagnostics/DiagnosticListener;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;->refresh(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/Diagnostics;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-virtual {v0, p1}, Lcom/sprint/dsa/diagnostics/Diagnostics;->getDiagnostic(I)Lcom/sprint/dsa/diagnostics/Diagnostic;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/Diagnostic;

    .line 71
    .local v0, diag:Lcom/sprint/dsa/diagnostics/Diagnostic;
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, view:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0, v1, v0}, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;->updateView(Landroid/view/View;Lcom/sprint/dsa/diagnostics/Diagnostic;)V

    .line 76
    return-object v1
.end method

.method public onStatusChange(Lcom/sprint/dsa/diagnostics/Diagnostic;)V
    .registers 2
    .parameter "diagnostic"

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;->refresh(Lcom/sprint/dsa/diagnostics/Diagnostic;)V

    .line 112
    return-void
.end method

.method public refresh(Lcom/sprint/dsa/diagnostics/Diagnostic;)V
    .registers 5
    .parameter "diagnostic"

    .prologue
    .line 44
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, rootView:Landroid/view/View;
    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, childView:Landroid/view/View;
    if-eqz v0, :cond_1b

    .line 47
    invoke-virtual {p0, v0, p1}, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;->updateView(Landroid/view/View;Lcom/sprint/dsa/diagnostics/Diagnostic;)V

    .line 49
    :cond_1b
    return-void
.end method

.method public refresh(Z)V
    .registers 5
    .parameter "runTests"

    .prologue
    .line 33
    if-eqz p1, :cond_7

    .line 34
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-virtual {v1}, Lcom/sprint/dsa/diagnostics/Diagnostics;->runTests()V

    .line 38
    :cond_7
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-virtual {v1}, Lcom/sprint/dsa/diagnostics/Diagnostics;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_14

    .line 41
    return-void

    .line 38
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/Diagnostic;

    .line 39
    .local v0, diag:Lcom/sprint/dsa/diagnostics/Diagnostic;
    invoke-virtual {p0, v0}, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;->refresh(Lcom/sprint/dsa/diagnostics/Diagnostic;)V

    goto :goto_d
.end method

.method protected updateView(Landroid/view/View;Lcom/sprint/dsa/diagnostics/Diagnostic;)V
    .registers 8
    .parameter "view"
    .parameter "diag"

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, powerDiag:Lcom/sprint/dsa/diagnostics/PowerUser;
    instance-of v4, p2, Lcom/sprint/dsa/diagnostics/PowerUser;

    if-eqz v4, :cond_8

    move-object v1, p2

    .line 83
    check-cast v1, Lcom/sprint/dsa/diagnostics/PowerUser;

    .line 85
    :cond_8
    const v4, 0x7f0b001d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 86
    .local v2, text1:Landroid/widget/TextView;
    if-eqz v1, :cond_45

    .line 87
    invoke-interface {v1}, Lcom/sprint/dsa/diagnostics/PowerUser;->getPowerTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_1a
    const v4, 0x7f0b001e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 93
    .local v3, text2:Landroid/widget/TextView;
    if-eqz v1, :cond_2c

    .line 94
    invoke-interface {v1}, Lcom/sprint/dsa/diagnostics/PowerUser;->getPowerDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_2c
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    const v4, 0x7f0b0001

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 99
    .local v0, icon:Landroid/widget/ImageView;
    if-eqz v1, :cond_44

    .line 100
    invoke-interface {v1}, Lcom/sprint/dsa/diagnostics/PowerUser;->getPowerUsage()Lcom/sprint/dsa/diagnostics/PowerUsage;

    move-result-object v4

    iget v4, v4, Lcom/sprint/dsa/diagnostics/PowerUsage;->iconResourceId:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 102
    :cond_44
    return-void

    .line 89
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v3           #text2:Landroid/widget/TextView;
    :cond_45
    invoke-virtual {p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a
.end method
