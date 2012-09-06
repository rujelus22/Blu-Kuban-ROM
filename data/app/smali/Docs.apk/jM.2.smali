.class public LjM;
.super Ljava/lang/Object;
.source "TabletDocListActivity.java"

# interfaces
.implements LIj;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 742
    iput-object p1, p0, LjM;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/accounts/Account;)V
    .registers 5
    .parameter

    .prologue
    .line 745
    iget-object v0, p0, LjM;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;Ljava/lang/String;)V

    .line 746
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, LjM;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)LhB;

    move-result-object v1

    invoke-interface {v1}, LhB;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 747
    iget-object v0, p0, LjM;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LXj;

    iget-object v1, p0, LjM;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, LXj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 749
    :cond_24
    return-void
.end method
