.class public Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetConfigureActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0, v2}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetConfigureActivity;->setVisible(Z)V

    .line 30
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetConfigureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_19

    .line 33
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetConfigureActivity;->a:I

    .line 39
    :cond_19
    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    .line 40
    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lac/h;

    .line 43
    invoke-static {}, Lcom/google/googlenav/friend/af;->n()V

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetConfigureActivity;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetConfigureActivity;->setResult(ILandroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetConfigureActivity;->finish()V

    .line 59
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 64
    invoke-static {}, Lcom/google/googlenav/android/c;->f()V

    .line 65
    return-void
.end method
