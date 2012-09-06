.class public LjY;
.super Ljava/lang/Object;
.source "TabletDocListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, LjY;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 512
    iget-object v0, p0, LjY;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LdE;

    const-string v1, "tabletDoclist"

    const-string v2, "settingsEvent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 514
    iget-object v0, p0, LjY;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, LjY;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    const-class v3, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->startActivity(Landroid/content/Intent;)V

    .line 515
    return-void
.end method
