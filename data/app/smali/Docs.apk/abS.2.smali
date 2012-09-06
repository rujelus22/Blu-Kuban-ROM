.class public final LabS;
.super Lpr;
.source "WidgetConfigureActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, LabS;->a:Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;

    invoke-direct {p0}, Lpr;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, LabS;->a:Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:Lck;

    iget-object v1, p0, LabS;->a:Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 43
    iget-object v0, p0, LabS;->a:Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->setResult(I)V

    .line 44
    iget-object v0, p0, LabS;->a:Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->finish()V

    .line 45
    return-void
.end method

.method public a(Landroid/accounts/Account;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 49
    iget-object v0, p0, LabS;->a:Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:Lck;

    iget-object v1, p0, LabS;->a:Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 50
    iget-object v0, p0, LabS;->a:Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:LdE;

    const-string v1, "widget"

    const-string v2, "addWidgetInstance"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 53
    iget-object v1, p0, LabS;->a:Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a(Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;)I

    move-result v1

    .line 54
    iget-object v2, p0, LabS;->a:Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;

    invoke-static {v2}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a(Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;)LabR;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, LabR;->a(ILjava/lang/String;)V

    .line 55
    iget-object v2, p0, LabS;->a:Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;

    .line 56
    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a(Landroid/appwidget/AppWidgetManager;ILandroid/content/Context;Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, LabS;->a:Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;

    invoke-virtual {v1, v4, v0}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->setResult(ILandroid/content/Intent;)V

    .line 60
    iget-object v0, p0, LabS;->a:Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->finish()V

    .line 61
    return-void
.end method
