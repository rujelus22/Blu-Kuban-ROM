.class public Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;
.super Lcom/google/android/apps/docs/RoboFragmentActivity;
.source "DocsNotificationProxyActivity.java"


# instance fields
.field public b:Landroid/os/Handler;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnk;->r:Lnk;

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/content/Context;Ljava/lang/String;Lnk;)Landroid/content/Intent;

    move-result-object v0

    .line 35
    const-string v1, "wasTaskRoot"

    invoke-virtual {p0}, Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;->isTaskRoot()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    const-string v1, "referrer"

    const-string v2, "/notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;->startActivity(Landroid/content/Intent;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;->b:Landroid/os/Handler;

    new-instance v1, LKS;

    invoke-direct {v1, p0}, LKS;-><init>(Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method
