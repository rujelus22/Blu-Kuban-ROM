.class public LjV;
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
    .line 479
    iput-object p1, p0, LjV;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 482
    iget-object v0, p0, LjV;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LdE;

    const-string v1, "tabletDoclist"

    const-string v2, "requestSyncEvent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 484
    iget-object v0, p0, LjV;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Llu;

    iget-object v1, p0, LjV;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)LhB;

    move-result-object v1

    invoke-interface {v1}, LhB;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 485
    iget-object v0, p0, LjV;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v1, p0, LjV;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v1

    iget-object v3, p0, LjV;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v3, v3, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LVo;

    iget-object v4, p0, LjV;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v4, v4, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LHW;

    iget-object v5, p0, LjV;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v5, v5, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LZJ;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a(Landroid/content/Context;Lx;LkG;LVo;LHW;LZJ;)V

    .line 487
    return-void
.end method
